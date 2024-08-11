Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB474C7E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723418754; cv=none; b=C70Q4+JR5zxqYpzOoxsOZJIwgLhNbcm/ABsaYkhkMiTfx2rheBeY/irBpvGwJr8b0ClgfUN7h9qQq2B/YAb+LHwZDyIUQJ7ouWKovw1g5Js6Y+yRwPGNGKheZa45cTPjC12U+njxZMUH0au8suLnInozlOI4hDtI/f3PtnOgPHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723418754; c=relaxed/simple;
	bh=HQGKZ80p+IJyqRdVUFdT+hnkESkIeMvIXHhfABERYQs=;
	h=To:Subject:From:Message-Id:Date; b=LlxvuwZJFwv2VPULrJwA+L8hl9RVZFxV+/rkfwZoCpkvCV7ArY6XZstVI2n62r+zAwfbYXxbDQqdURfL9Yc8Bdm8Zh4UoWZc+uA+XyFYD12v6eSV8I5nZutSE9NvFUF9vn/D9beeSW+JWlYN5PSloGHpEHU5fP495QMoCTI8f5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPtf8jRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPtf8jRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6DC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723418753;
	bh=HQGKZ80p+IJyqRdVUFdT+hnkESkIeMvIXHhfABERYQs=;
	h=To:Subject:From:Date:From;
	b=UPtf8jRK6EQ884N/Oj260ULb27V4eZ+4Z7fitFqmSrnPgjkbOFCQRLWXE3tGMaAhK
	 sp3PMqJ51vIPO0HdIuLWJ3wGl969AtTX262zC5K4kaOIN+Gz1swOE9y4PNObBOy5q3
	 kzQTBcRKV89uEymPH5QkCbBMpmLwE2GqaRBUVNOYFe1ReBDVmu3/K9O7YClvrzn2Jc
	 uV2GEgYJhDywc1LUbAAjT2KzUs4Wnvz03xOUxcK67WYw7PjFoTEbR769hbjKGVnr7B
	 CE+bctY28uONgYiYhDhRV/KbSBcw1cayZ9N9r5K67AusR2ieOoiuastCJ1K0tAzrKI
	 ZaAezf1jEFw7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB2C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341875358.2896.14598691469585570291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336e80e58bf1750c385aa3a0ab65918c4d374215643161cb335dc556530fb6e3
Date: Sun, 11 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723418753
