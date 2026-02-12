Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6A742A96
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770882894; cv=none; b=lRt8HqmPu6JiHBK7b/P4IhQmIMzKwaOu9W76kCVbb0FbSzoQmxtar/oiEmx+LWDiYQONHtRfTUqpnc7rCC28KSMYa/iXcC26jCTryvf0Qvr1FwiLLTKpaprbwbSZ6M0hdFpRnfNHspcWN0Un3AI8uebOAncrS+0Kf98vgpAZK6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770882894; c=relaxed/simple;
	bh=i6LyNXhAyIJJC6hCh7exs1QHLBOO/DQQq9SH5vMOHgQ=;
	h=To:Subject:From:Message-Id:Date; b=HOEPnyff63gaLsgqtwv1Q9A703PqcQqvtix+nCGwKCjTjbuRgLaJLPwGUSjKcpBFYlSlBcyWFq2bT9Jrdn+WiYFuJy5gteS6uHXRwcPOTOCV74QWG3UlpfC2Hr4HlQYm9oWWxpsTG/+mGw8UsG7wMnfSz+UpEdn/MtQbULGRSew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJFBOvCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJFBOvCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB79BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770882893;
	bh=i6LyNXhAyIJJC6hCh7exs1QHLBOO/DQQq9SH5vMOHgQ=;
	h=To:Subject:From:Date:From;
	b=IJFBOvCYy4Wot5mv7LliLbLxqJqKIS1xSjYg+T7411LLDvtW12Ij2e5m1wu7qDMOP
	 +FCW725TS7pthTZxd9TRUAcoFptko9xUu7SzcTjTalurrMiGax2+wjKdFddW7FBuld
	 RK6Qg9XnVKlvjTex39bdLqaygPMD21Mzq3gczP/XJbYwLfapW5byjALS37WUSjkOaq
	 N9V7yGRRYwzA9uPkDExlO6B17ILhTOeyWeLpiTRz+SYow3dczTw24Bg8QDG9gSUsxU
	 eIZuu24uOri7tHtbNWxZdqSk/xFV7ImwxW1XHDHG3yBAhup0pqkJoYJJCjj5pTjZr6
	 v3dgWhWcnpVrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B77EDF04C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088289359.25447.15094287108455337864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1cf07485783b860e47f66ba75a9f701533961935d68e21f2613a369ef19562
Date: Thu, 12 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770882893
