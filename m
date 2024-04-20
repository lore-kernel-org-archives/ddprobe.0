Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADA946F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713603623; cv=none; b=Vlv1AyTCqieVaGiW4NJKtj7zmdvqXNvf7faKVMaFSbDekR3UKp7KWfy+RJCp/D8s0BSvhXB80LSAzWa/+5VggkHScnJy+fylWW4IAEgrPaqVJNk9WoC5OgRZNW/Ov6WPav5BrvmyZd5cM0/VPY4K+BgJUrPB2wyqXsuspbQBj5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713603623; c=relaxed/simple;
	bh=pFbtvi3wWlVVUUxuND/QWy0zGz6Bcj2Bdvwa4F/NFG0=;
	h=To:Subject:From:Message-Id:Date; b=jJAdcBehbUiz9zRoKobhLR9TN8HO1p3SogKmWVRFrXPZbsCAe5OQCi+rAxa/8+5ILuLp75HE2y3qq1aj9J1Mm094BrX1Elftr00kYkC3bEnHkhZLHnnpBsXK+uoBLSIaS15mMEPZSZPi9mAy0DYJjTe70nDWcMlqa9x/cXJRvqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3AKMj0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3AKMj0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5BCC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713603622;
	bh=pFbtvi3wWlVVUUxuND/QWy0zGz6Bcj2Bdvwa4F/NFG0=;
	h=To:Subject:From:Date:From;
	b=J3AKMj0kZTOaZGwqaL9aCpx7Goh6q82allVcnauVOaY51/T7rF0GyIKGP0b0w2bni
	 sG1go+ebISbiCKZLFaCYh3zIRKd6Swaehe1fnMTCIvm7yf3+tZfWh3srf6VQoGg19j
	 iZlgRK3u9ud6zJ/4CExZsGRtlf8zNM2VLOCO07114tnMSFLB2u5bWZX6LqBxSE/RHr
	 FfcvhBAqQnTlXgc3dRhXA1R7KMBNZk3ZGksfzWMXx0HzahDZ1S3glWvJl9Q2OKiPaJ
	 EjXGO3Qtp78tGuQxIxi/fmAzKokO8LwbKSBDjk1jPnl93COHjm5NGF4TV0OSeXR8mH
	 W84CTll3A4+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0947C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360362283.752.17685658545746601889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c4c22bea3302e0c2b180a4ecfefe2fa25da4a692348c49cc1dbe699ce1a3fc
Date: Sat, 20 Apr 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713603622
