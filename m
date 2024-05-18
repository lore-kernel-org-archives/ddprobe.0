Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5070E6AD7
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716048143; cv=none; b=GQ/EA7kV2HRZYark63QcrJCyaZnwmHRVM3i+b3dGu7mM3XCcS/QZ7lnnx0EcwDgr0dLjTE6L98j91F7gH2sQ6Ooj4w8jbgfE9qgFOIBtStC420EvB6D7npPan1w/DGqVO7ZEty9oH0XUt2VfaK1p1kdOJouT/fGFeJ8gBaCKwJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716048143; c=relaxed/simple;
	bh=DgLhbrT0SupzndRozpECM1kzVkE5X1CgN952xA5K9J8=;
	h=To:Subject:From:Message-Id:Date; b=tGEl5qw2N9b3wEDiVdi64EEL9HF2Atw2qJEApmkxrtwz7HvZLt1DJCijx3eI6m3boQAPPAiFZpUTvrpfb/I+K2Hpam+rI8to3erTUUbPSYwoHP1rPJ/MTbOyoN2rv8Hu3x+w8doNDBHthOpWuKQbAq4g3ohhaliSrJ0RpgW1p58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBHl9Mw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBHl9Mw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5845C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716048142;
	bh=DgLhbrT0SupzndRozpECM1kzVkE5X1CgN952xA5K9J8=;
	h=To:Subject:From:Date:From;
	b=tBHl9Mw6CM4D37rHtBajQWQDfE335t8z3WUy/bD2VFiRpI/cqfcxl/3iq687h7P/+
	 wr/msqwaq/6HQwj6RezZ5DJtx1wC0ukedhyOwjqY6II9YFBm4XYXjBdeI2ER1F4THA
	 Yw4FSMgWrpUU5rBNvGupUDLN3uOqbA2CrORyz9AkekefgecIdCKbad8eccM4bNn1GA
	 QkL8Ea6TlepMCsGlh5OsnUtVCf6DcCqy91DW9NH3QjTTqSEkZcMYVydshPbT/sMiCM
	 yT2+n4d5f4XhuYKYypTnSuGyqCFf7YI7ViGW3nrCz/dYIshyJOalwBdm8ItPSAup+6
	 OlggTf7ms4Xgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DB8C25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604814279.4556.6504356301313099205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e579ba59118708585062baefc58ba372f1551015ca3c73dfde710d9e968afa
Date: Sat, 18 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716048142
