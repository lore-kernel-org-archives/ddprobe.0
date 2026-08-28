Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F7730594E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787952034; cv=none; b=LGeejkS1kqLsVvlTV57GnuBVHasWx9kKupLo1dER2dksdtanOaWVqelSjL0JkOcwtqWjf8hs9pulFdsijNPcZ0EK8PXL1QeAitKwQfTDA0B4Hs5hoKUuu+xFIe+BBrO7rLWSCh4ZHnpTxPe1M4AQmN/NYzwMWC+sIo1/Qlywf5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787952034; c=relaxed/simple;
	bh=KN++ZF8FSJHh2dzJhmxP+RVYJ+tAXiUuD4oTVOorEyA=;
	h=To:Subject:From:Message-Id:Date; b=VqC3qFnnZTvffvw6/rNewN/fdTiA4vvEoE7C3FNE8Cj2EW5X+Ak7ss8kk0cmLpQ13mglhi6RVLTBpScrDAoc0twlQ15Ncn/Ub9r45FXJl2ssnlgCE+RyYdN8Wkv1dEZoUfuBAzLOinjupSRm1fyhzHpX04Afo+FZPWyqqr3Dyf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qapq47Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qapq47Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CBBC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787952033;
	bh=KN++ZF8FSJHh2dzJhmxP+RVYJ+tAXiUuD4oTVOorEyA=;
	h=To:Subject:From:Date:From;
	b=Qapq47Ps+sBHP1J9njTWNo9wgPjqqvXjq4rjRkbRLHPB7ZVyo48dR01xoY+cG5HSp
	 10MNJe4JmCI0wVXHd6p1KQaL9FWsJstQBz7wXff6xG2Z1DGdCIdU0PUBo9SCR8lTns
	 N5ZgkPhEkZNJyEa4gkpBCBkT5iaVWi45cdU6qTaEzCQsrS4eweLJ9Map9MDaDBaAQn
	 9DOEo19v4HfejHf1KIm8y3TwcXZwDCKXjvUo4gh8xPj1VnA2UqZfBs641IOw8H4jkF
	 ytxFiXCA2Ig+mVj+gVADrL5QaI8rESh/9obhYX4ptmH4KTjA4xvrx9kwJBSkAD1V4r
	 3MbRS26zdCFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE42C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795203369.24841.13355442713473740318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4694afd3409d6564be2aa780e3446d9ac9fa701e12a199a7da89d9f0e95040
Date: Fri, 28 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787952033
