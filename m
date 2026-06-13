Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1983368AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781342794; cv=none; b=AoyjtID1/0DgNER7QBRsctEKaNyTd2c8wKiBegfJKjTEl/DcM5Ck8R77K+EMqeGAsYiOKw2Vq6tc/xtifS02zPlRbWvfJGqnJLLVv42xURJ+i2o32IeniFoR2rGiSfLC4BW6rIUW28nY9E4l4g6rq0J4z0D/u6iRyQN1yuLOxsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781342794; c=relaxed/simple;
	bh=BNERH2quhcJZC8uz1mjqprLWe/RpLJmO/e9LnBQB1gc=;
	h=To:Subject:From:Message-Id:Date; b=ZT3Ywp4B1A+xRC5ikm1Dksdeh53GAIj+IMdFqdJx81+aSeF4v4xtWc2stpQ56K7jcTeCmo070z4z3De2QCFafxwiY6OZxZKFgYLcGSonLSczyyFXsGiza5bCfjlmQkoROQx3Sb8sUAZAjwb7bm9y/V+r1SOcAhkOF3GDuaXpkw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emuqvrzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emuqvrzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99E7C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781342793;
	bh=BNERH2quhcJZC8uz1mjqprLWe/RpLJmO/e9LnBQB1gc=;
	h=To:Subject:From:Date:From;
	b=EmuqvrznN4JvVmd+zIQW45sTul86+NBOjTYXH3/B7c5bT3eP/LXVQCqtdLEpv+2h9
	 OwM2lPby/Hya0r2Uq8xFzJjzHxH5/FcfK3Jg9epI2t/rUNGpp4dtyiMqCWR/IxlvCE
	 zhoq2V+sCL9SwTf2c2TuI9z3Cd/gjnUkwkp9Gnjjnf6BviVVo0XvLZxMHJ+KtHyjZq
	 2QsRFbTlBEnNbq5Q7vqXN6aY0CxlVS4kZz/PqNCjhGmuqnZpGSa5WB1yil7ZLvFxlK
	 mbyaHaBtC/74r+VWgP0XEQteD4rgp8V0sk2V2mEqj5vp5A02plvxIdskYMiN0xtF0B
	 BoAsetJOp7EKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D0CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134279368.9433.9738024451284953138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb85c91f2ef1b5585770b2b327d070f677ea6715867f278784b6bc3cc8d5f7ad
Date: Sat, 13 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781342793
