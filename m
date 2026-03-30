Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EBC2DEA68
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774908894; cv=none; b=NUgvJ9lVL9+SOFMbICBXvIJUdE0Ik4rt8douluHfGMDpJr4V/4toWbTwb2ge8o9D11Hz+KS/sXkqp2nthPJ9LX9RxFpx9unPTLKFetZkMbyq8TJFAbJOgRsukV85qD30nHY9n3NwCqEUJ1kfFBA3JQd21zG56uI3ZFrKBbHW6rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774908894; c=relaxed/simple;
	bh=W/iLWxRcab04Ey1C8lUapLUPX8joSynvYm7yrOfIGoI=;
	h=To:Subject:From:Message-Id:Date; b=puy2Z9pmLVu48HYnBtiy/aUyLxmOHhYxauXsiRXqGH9W/CRocGiA7T40wUdUgURfghMZOHponlho+j1yfQk7TW7W/Jw1b4MfP9HsuEGoFuW4mhr4tX3dorIvVuUb0wJ9rB8EU+SBaKv229sYq7/tQ+7Hqbi17cY+fbKr1+XMmos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ai+Lhnbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai+Lhnbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774908893;
	bh=W/iLWxRcab04Ey1C8lUapLUPX8joSynvYm7yrOfIGoI=;
	h=To:Subject:From:Date:From;
	b=ai+LhnbvvQ1nxarQMnd4wix3Bfk5zO7lme0OqNWjXe3PnP5cEiuJ6wIiHLYS+zBDe
	 Cndcst6Q4BrWy96A3efaWjjZVlEHVIf53aaj3giPuPcnhhqlLpmkgI9slI3+2sp9uB
	 n99Zg53Bm0WL2OhQnczkhT2x1lWO7dHJJ4LFkeGUcWlIqs3ZV3uQjRB0yqOgfYTKpL
	 beGzPTQJmXUo9JORLlzCP0eL0H4Cvd+GgEMWk1mKclpxTUF4Cn1xfVuRJOuewHA3rE
	 dvNi9gnPEo8mVDe61ya8d+N/gf2YkThYoSv8MJt98QTudGLga7w6skRsejdTjituc1
	 c5DAII0ii77Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D491061B18
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490889358.23493.6467289865379453239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477e4f295cfe449a6fb317f7fa6c908f5357d686907783e5b623116967d76f69
Date: Mon, 30 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774908893
