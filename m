Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2826BFD5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717358123; cv=none; b=W0BbwLzAfCY6ma1G5mrAN6TsTVbqnb0BoOE2IW1Bw/ycbhQ5fhjZYjvKdVy/ZGc2bsTBLC/mCAgK3HmsKSdHpsCXZrmrKCAsIMf1toYULxRQORwXfPC6W4zSjmuL3d2iRFiFw3RYYfyJMicfSrG1QjHm8hAyaoNlMTjr64J5EUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717358123; c=relaxed/simple;
	bh=QrOj8QKZ8TsvZvTdRO7FducIoQRmSsPB2vRQGNnQI/8=;
	h=To:Subject:From:Message-Id:Date; b=hDaTP/U+FO7DpZYSW3l71d91nw86XWiXwutpClhqy5RGf+C0zhvwMVyn7e+kJDGs+1cdxG4sxF+gTGURdudWEe/eR6+VpG2HL5D1c/ZL2TUPfTbfOhx6yWb6fgnpgZFSo4pn0OXLIHYspquxCfxik2Z6FYuwwUCiAeSOS7ngaTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsvtvsPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsvtvsPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3D9C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717358122;
	bh=QrOj8QKZ8TsvZvTdRO7FducIoQRmSsPB2vRQGNnQI/8=;
	h=To:Subject:From:Date:From;
	b=qsvtvsPm8rRiI6lr13HDbbfwtnTgVyoLuILWI4cD/Yt1ge3lCK4EtI5e8Kl5m3mDR
	 WqY7bFR1z9JS3a++FEJ9n7oEMRXfvENalY97hFPwZb5KSFin90zq2l433wC8bEO5Nr
	 CBoBDXcl9vKVpqDWCDjFDhCEr6N3+XTk2BZ5i7zRpy7npeaS1UtwBNi5/Gi9RglVHF
	 YIy593xvMchuoxVGxlIAchmrTRR2FZTC+jie3lIJHaQkzqAOE7HrVZ3Nb6vEXohriw
	 ur2GCO5AZixwI+6ZyGuerOcTSXXmCuqp4GdrqU2u56aCDeI0+XP8gkL7wxIVun6vit
	 YmS2H51Ig87Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC69EC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735812276.21364.8213442763904199728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff64229b50c3b306eb2772228fe56782fd70983fde4efbd1e24e748d32da51c
Date: Sun, 02 Jun 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717358122
