Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC58146A7A
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726419954; cv=none; b=hlMpnLIAYkORbpdIu0LhSbewXk/4zzYTsvW0h9N/1dvpoC1xgRswQPZIrk7c8q9ZC/u4JpUuTOybK5pLWsLWBCR9aab/U5eb5fBQjydAHPjACPQ/LZjRoh/+ph4KcAzCGyS78IShXSkhsZnVrj6NGOflh6izxJiyMF7PBONwXeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726419954; c=relaxed/simple;
	bh=BOgBXhJOgdPvTiKF5YHZ2HtNEhAeeilmlepfUqLuVUo=;
	h=To:Subject:From:Message-Id:Date; b=KOSg9qBNYJuVAe7L5Z3xviqrpRKWcnQHwaMigpJDzEEd3g5MpzSmMXvoc7JcFce+qMirX4xRFXQBJjhLp6/SY4epKG6Dv3Zko9D4BNycfIF3HOAiB9toMbMUZ7OXp3HqF658/6mVSikRJViRp2FyYMHQJWqw3GqSiOduUseSvG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLyEyW65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLyEyW65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23E7C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726419953;
	bh=BOgBXhJOgdPvTiKF5YHZ2HtNEhAeeilmlepfUqLuVUo=;
	h=To:Subject:From:Date:From;
	b=TLyEyW653W82wuJPmnvXvtEfyhnpD1fh/rpjTYexrbz6gN0IZt1XgLldINgRDFYYw
	 nq/j15yNi6xgwstw49Ro9HRGpsEcp0/U9epMImuBBb3Nz183fwun6iZLuRJjtq5PiO
	 35JNKfNjtm1+Yhsb1KoqN9QZEtAl30L3/nWvYKVw7+HuPJm2clVrqvc17ztgRVn8D3
	 3VzzXvHEanAe6UINRFzOLlzkssQFTIZ2m+61sryro2uksa9b1g7kyh8sWCuMjd/P8/
	 5J1D30ks6lDMmmnyPz4hT8Wh0LCzQQ6tb0j4G8s/YhR339kBKnyhT5LXqq3GBjuVuR
	 JE77kgqBvnSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E30EC3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641995363.4979.12436266654140333517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec912192e597892a1d1ce4ffc655016be2cc130f57511f263ed551b3e8e75488
Date: Sun, 15 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726419953
