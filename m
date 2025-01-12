Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345132556E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736677554; cv=none; b=BQcNooOrnFnEOuKaOSikfV6wA/VpfgAkAbRvSE8N2qDA/D7eT8J0fSZzYTyGUCspWtgSl5nwNupYgFv1s2uA8HXbeu9nsb7UgZS+cZYtRlyW58OIuXb7L8p5GRxG9uqseNliXFrfc37mO5hqQudTLuOHy+c1BX38g2ypnMfapR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736677554; c=relaxed/simple;
	bh=xkHAapuaB1iRi+puDi+J+25scH61f9k3d6OSPplwnlc=;
	h=To:Subject:From:Message-Id:Date; b=ZkU3LKRiYb8mmc8tqwJyfiZ7fgyNXN+lFu29zuxPf7soQW7KYJKBbGCYQpbp1Aft3hDYrE1Hjj4eEXfYJgjluL8MmnzEqDU9AkyR8Dl4ykCwcPjtVv/W86omQAiy8+RvEAiLGY4d9zvYE+jKlH0nS/joGyyeVRIFnSVpGtKk9F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKyZfPYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKyZfPYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A39C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736677553;
	bh=xkHAapuaB1iRi+puDi+J+25scH61f9k3d6OSPplwnlc=;
	h=To:Subject:From:Date:From;
	b=KKyZfPYHFxFuNwPGjQKL65DjIFUVUIzP02UzM+eIKd7cSyJOTSNIw8IO2bInaGISZ
	 CDq1khx1PUUQxRFxy5gm7vs4LOepLgkYJVLvtSC4ZwowiV6/GlEXpxihepuzBP7Qfy
	 6AiFotNm4/Ic1jKv7UhP0YXmu4bUP7d6Bt3ozFS/LKB8CmVFa1CnCMD76brUTMTvfu
	 Gynozgjamr6jNhsi/C2qDAp4dcoCbH1c/XsL8rCg/8JvwPdraGRf2IGASVSxNsyKar
	 +E32xUjzf0Z0QUOWlAlyM/MWOCJZJRby6mHX0rz0WBSqTa/+F9QPe09Bk/eAaUt+V/
	 rJ8lMXVrO7Mnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96354E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667755358.7818.1579067397171786188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ba8c168b3626ed5504f2afab5ca3407ec089b197ea98743fa930a714e9d87d
Date: Sun, 12 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736677553
