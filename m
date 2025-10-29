Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D1329C5E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730794; cv=none; b=M64sEbl6RA/WDaAzXhWtwaimJTiDO/0WUCfUwcuCxOqc2CaH9fg5g1WjaGyfyOyrI2+FJyFybIJ3UOi2E2MK7J+nYunbCPn//tFEdJIzOeeRD+C6YqJGPRdHqFTAD/5bQLSrFeRUmuOQ5Ztv/wLBY6vRkPVWjguK2OQWxfL4UF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730794; c=relaxed/simple;
	bh=tlY+SceLE4k9WAHBKs4WzQQHsre5tn8hVltVy3BhT9E=;
	h=To:Subject:From:Message-Id:Date; b=C/Zd/B/2NUa2br1T/1U4RVMBsCdPrIarr5toS4WBPtkuexfRwfq5UbJQyOc6tQz2cWmQejYNnYseDJkdfnCxOv84yrDO7tNe4N6L684OxRd0mpB0MVepsfFLKcKpijlslCvfJZAlvXBsAacC2NtdLFwbvecqJdMF9/23bKR89z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyMea2GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyMea2GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B05C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761730793;
	bh=tlY+SceLE4k9WAHBKs4WzQQHsre5tn8hVltVy3BhT9E=;
	h=To:Subject:From:Date:From;
	b=VyMea2GJWvdz7hyOEIL1V0VTYCdwRf1CDRbWq0D18Rsj3hPk/BjjHvlVvb12npZ4u
	 oksb6YJQO6o6Vc5SEpow3B5LMy1AsyN0aogDk2pKMgkae+FKu41C+8NF9br1tyqbud
	 +ibCTS5q8sXWPTJK8cuioFMPvR/uiCMEmandL2aSODlaLLbH+mTl/otmfJytYbvXQp
	 zAyGnvXLurrj+oMefauaBPGEtIbz/6Vu9AUNiey12j2A+Ket45PeAFXRXCmMGHrZ4L
	 ymxCLpF5dyAQDamYOhE5dQ14xJPpLg2ytVbRGDpQYElnvIOLL+zDn+CYixn18Ve9Cb
	 5qA1p/YeqrXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A5CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173079358.28189.11094149023609117072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d6f98247d023aab96dac8b4c27015017cc8dac20e73748342c10c873903af5
Date: Wed, 29 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761730793
