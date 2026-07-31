Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F423C368
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785537634; cv=none; b=XLGTzszAF8xex2wgalOqpta6m9t3gTfUXmGh2ijGcOEPLRwUS1LtYDpArj4CbjRDyfZ0qrRsLRWHExfFq9Iy83Gtzcyps/c7cSg3hswa/xjGbi/GCagxw1VB3NWRsy5PpX8UnxGXOmo6RdBUkxHMhWE//eNYuRFDGHPqt+14HbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785537634; c=relaxed/simple;
	bh=AqzLN/fNO2ACcj06qYyXLcCEHDttL37UvNrQjlNNVzk=;
	h=To:Subject:From:Message-Id:Date; b=k8wXXzSMfBzgtxNBRxSdU/1GidS1NSQtx4YNaXBdzcnZyU3l+CRRWz/OQMv/gCDYuENPaJPCnn35n1uMlwRg1w6xmgCugKSjPn0yigs3dQAO7juxR2tZbtO3+TuzDNST2NiWgmGKHFsE41E610j260/kQkPbm5vJUijH51ZVR3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYDStVNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYDStVNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE986C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785537633;
	bh=AqzLN/fNO2ACcj06qYyXLcCEHDttL37UvNrQjlNNVzk=;
	h=To:Subject:From:Date:From;
	b=dYDStVNMDLRKxk++qvLDIPYlvQF0kidn/3tAvIEiGT9qRvHLF2Ul3Dtl0NcuY0DUn
	 GDlCDxnLZ1Y/RfrVpl6Jeaqqym7r5Fpyf4Y6gd8wKOWXMZ+HFzAn9j/OtrYfN9GlVF
	 q5x06O1l7HaAMTJ/T1Ze3Rm5b7HyFDTF2YuvMzKnYn6ElhZa/6cSMR57NmktQxjXXt
	 aEgMfpxb4gNtdVaOnyNvwidVP0fZDf6q0+aL3w0lhHLnm+8JDVE8GtdcJuUBMFt+f9
	 rZh/XVP4CfJEl/3ujQ44OGJx6T684PHEDYMLelG9zAotyrQvcqRQtZ0YVisNH+ECHF
	 Egobhv5zpgsKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B9DC55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553763372.559.448745782670677199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e17d590bb0c6977fe334de28fed472e855497325b89b43c15d09850e0ece14
Date: Fri, 31 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785537633
