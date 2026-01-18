Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E12223323
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768709034; cv=none; b=qqFbcn1rzCugK5KDX4ICxK32W6oFsrlByK6DazwfdN+AqeJBV7AxGQTY7WrPCocFbqEZ8Aml2UwUyVH1foAn0badPmTf2pq/+NZSwKn8XWkIhZLqCiiVmx6Vh9e8I9oXlZFZuCw+vi6vb5N9733YBB665q82dVPVME1w8SEjS5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768709034; c=relaxed/simple;
	bh=+5ROW3eTCp91dOGwukk3CBWzxs2Y+6tqdj81SLdTSWI=;
	h=To:Subject:From:Message-Id:Date; b=PexyvLdOtbeLX5v5i5SlsSIkBsoy/OGvZEfyk/fCf3q9L1PNjkGCtCtGVVxyZ48AcZFOwG006d2FyEd46PI64dQnyZQg3pt6JcWHbyLS2YsWHfEp+32FilDNxb0LXjeCRAdNcHJb0pjUw0ARZ5J1KxfDz4J7WuZ0YC7YIGBnhM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+yufG7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+yufG7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768709033;
	bh=+5ROW3eTCp91dOGwukk3CBWzxs2Y+6tqdj81SLdTSWI=;
	h=To:Subject:From:Date:From;
	b=H+yufG7TBdaQWC2eKOyFE9OG7xXuXTZfATLEt3Io/tUXKrqupudX6+dCRLRhFxEmr
	 Im68u3H/1SjUc62Z3Rmp58y+SOtvCKrhEnEZ1oXWaHELmAIsqKz8f7aq8pSvq37/1n
	 7wRQMrWavB4EK8Thscj2MMbmr9GUDexJMQsuWCvzPG2alpmgOgeXMZmH7mRayGdSTi
	 RLOZXxZjmzjFuKIj3ZCOYKBsh+a+L61hBY6uh4Wn5I8O5zW3yZJ53a/C3BkyxgD4C+
	 jJBp7gVGCJ/8xrDaXHlWK8Z9kYw7Nj2v59gl6P9VTGm4/bUcVRapPKQCdDljLaWxvp
	 gzPv2QuHJ3MYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90886C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870903358.13368.9962621500419200411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb93e4b41209198019d1e4377cc9bf8f7ed1803f9484fa92541905321d14d270
Date: Sun, 18 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768709033
