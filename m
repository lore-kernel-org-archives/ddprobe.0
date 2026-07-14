Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D9930C161
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783994914; cv=none; b=O5wdyGO1GQYNbSa3j39P6P3kDovWbfZB4HucwkGsJlBy2aF8J271h7aHD7FcyV196Jz2k5JgRNWMgsQs9SLxseLC/by4irFVogPcbi683mxsey9J4C+IS9SSsZ3ykJV8zVXTTr8KSuRvgAoYWG+3qCfQ5OzQdqoRevXSKENWh9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783994914; c=relaxed/simple;
	bh=ZoR0bgn2IxguQfGhvmfE8rKaf9FYJnT+w2OygDAuJuU=;
	h=To:Subject:From:Message-Id:Date; b=cp4Bnrme7Ops1Qo+rsr1x1gpqtoJyKN6gzbT0Dt8BQ6VGXFTgHEpburB7yxuj2F1kUuRhqcrgf86Cjs5FjGjYKHjhyvgIf68fcz7CdRYLyShooOmPUWU8UPEzOqE7ovRsgABvSZed4qyHB4E3AAS6AAp16DKVzytqhWlq7mV7JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJJI5rhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJJI5rhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC1C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783994913;
	bh=ZoR0bgn2IxguQfGhvmfE8rKaf9FYJnT+w2OygDAuJuU=;
	h=To:Subject:From:Date:From;
	b=pJJI5rhr+IKNaxFED4uV7gurFADtAoqLXn2LGp/wc4gTwSW7V+7UHf+NKrze059UR
	 I6ESwYZ14Tm8xrqGydGXU6fEUe+Y62AEUYLwWhPCTrDdoPyj6mKquxhnAI62gfbesD
	 ri39dhDQH0qk2KVfsxS1ZMTESRjuqC8BLz3BjQLy6X1++kHGp8jzxdZmMT/7Qt5To3
	 GajIdwPX2KF7tZPtylnXrikHF4gYoyk2S4VHj1NqUvUjptODt40ha+MHisOh1oKV7V
	 pwrgA82UGfKdH1JlydCmutGNIiDVEso2y6wESCxk7pf3e+WXkeQvh/hUsZOB4mWTsk
	 i8pR/NgVzPSAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4D4C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399491368.16076.7597420310745685853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443af08d11f4ce4d4106329d3eb09fd179e296085740a1d8b633c3979b69de31
Date: Tue, 14 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783994913
