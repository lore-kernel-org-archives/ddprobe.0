Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777B2171A7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720064723; cv=none; b=TOMQwCklV+IEpAEI0A8PiBRFOfk+kJJsi8+e4nW0NGn7y0HeW8J03EQnkNF729AvZ40lb5cR+8owdtUjcUMegYkCzLOSL2T2UPv0e1zDpQyg9VEPmw9i2s4U1IX/KqQaFZXvc2kxyUWn9sSbmykd/gkPqkLe+Uh0lHnPpzwHvyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720064723; c=relaxed/simple;
	bh=7KnrhB+WXrQkKBZ+/fOY4D/yOrRw94IjjD2b23t92ak=;
	h=To:Subject:From:Message-Id:Date; b=L44/L3XKDG3gCcqsQQtmeBVxdSppxnuTBYzAwbinUvgQmAdMFQJQjXB5vuDAwc0boTpYW3+5IxFxPSF4PDUK0UqphlhPLvcROOoUxebCCfNdkSpP0Woa74wjUKhfHu00jgPHw3HtJcQsDu9zjEmEh0VbqgXRnAoJR4Y9O7Ood8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQK/PY6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQK/PY6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8817C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720064722;
	bh=7KnrhB+WXrQkKBZ+/fOY4D/yOrRw94IjjD2b23t92ak=;
	h=To:Subject:From:Date:From;
	b=bQK/PY6XBKw5oy2lJTTVMGli0kZmmyg4md7FsDaysOTpdOj5YGEHm1hPfKRlQhq4t
	 On+3ow+Bl8Vq78CwtVTpQ4RjINvLK8b/s2GnXYr0I+UALsfZJW0RO1D79tLYXcViLU
	 Ykdk+xy1mUYjo4TvD44LcIXAJnZUn7HWh4POhnHyxtoFAMRImayXvfkhSWO8XVrhsq
	 h5I15dR0wThHap/bJdvHmeW5cCzHCF21PAaFhxlw/NqiEui4xp/5S4ERQ0OaM34S3i
	 pROY+ql40nOF0vLwXrYXs9Zz8TamnA9QSHcjtj8pFJ8/lktqPmmUWo1zWlVVPrMJEb
	 aMPwI/epiP51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9806C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006472281.16457.13700341069263039208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea88ca682f659a458603199a835abc0a084d675f31eb7b6e541c0479ea883e0
Date: Thu, 04 Jul 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720064722
