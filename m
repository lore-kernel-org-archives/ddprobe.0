Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012493438A8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781992594; cv=none; b=RQTU8pT5rDFXjb9iqFRHrOZD4JGZZvMV2Iw2FatX8YNIGNEt0LJNpMU2eyTxiKNOntS4kdyN1qWYs/MJbCrteVxV81tRtmJ+nY3Uc9jGq0sjMFSYEGjKrvPQHM8UHQSQ+gF8D/sxrGGxM343pc/QmsgMMiAgJkgRCX1UEqUBfNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781992594; c=relaxed/simple;
	bh=XWhiPzBfz7ZwhAUTPCbBKTT979wexVci1+oTY7Wxovw=;
	h=To:Subject:From:Message-Id:Date; b=bmGCGFaAo36RRp10fpxEQVK4z5GVv7VaEkYLA7RXNPEnWTCpGzbSAtbVLFP1Wa3C/51pKIXrr06qeO1XrVTj4ZcXeEiLM4A3A7YPqcndZSQ5fP0VNy5MoZyLJ+GdRA7mm1DRrIUGzaPkHpakUvKXLp4QHdQjcBhKQkJz8vyDGbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qId1BOnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qId1BOnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D3FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781992593;
	bh=XWhiPzBfz7ZwhAUTPCbBKTT979wexVci1+oTY7Wxovw=;
	h=To:Subject:From:Date:From;
	b=qId1BOnX+WguXsHn5XeEsvMMz24DM7G9B8yApkTAjguiRm6vW89+9nwspwBWd4v6L
	 JeP4FeSAljY8eHlA2rkPGRyraZRRfhMo+5XW5m23tUpWqM+jVFo4onSA4eAey03mZj
	 YZ5JgnrrrlQzIevii+1dCKE2JzzT4d8gaLINJsrg2Ke5sVRpLJBN7xvBnFt+HcbaCi
	 DCawUhiHbcQvcJX+m7Ok+yhrURk7hC/ksdSzsGsWf+aUc23kwVrE+L4p5fSAhtuLuh
	 sNBi57AQnEp0OMUZsIB2VDQatdhZeSR6uPP7n+lkFE8rNU5KEwhQLvGp5425HQjLgB
	 uk6KH4H8n9KAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD359CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199259368.19315.12901411092221647716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c4d1fb46842147772004aca2185b400f101d0ae79211564733971134d6e86f
Date: Sat, 20 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781992593
