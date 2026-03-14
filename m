Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067EE1A0BD6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773448494; cv=none; b=sTBEBCbm76xETMfj7mtFtDn/jljfuv29qQBPQOTlcwtsLQc1ISXVqM2LnK/4Tsbh8egIzYdhhbHww3QK9B9bWYNJ/i251Ra3+q2dgHl3RBRvBbKRQavFYpGCTaOjzhW4szLWZlGZy2pwHtfgo1qNqgxDaMbyAN0AF9ykYZP2ieo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773448494; c=relaxed/simple;
	bh=/Dwx4rH5gtieUEr2k+BpFKGvAPHr7c8wSKd+4wt//FM=;
	h=To:Subject:From:Message-Id:Date; b=KijcY3JPFQiR40lgL3g9Jo/N0p9GaKu5Of3z2JyyPn3OMc65jSSECNZIiA4A9aixKIyVL2+NtpohSKtEBxPtXlBc3X1jcwgiBz/ePqLk1iXGBG7VjbJZw86Y2RapUuF/s61iJWewrgu5J1cbhMXBRr4kokG3k2E6TV3Knv2r8as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmPePQ08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmPePQ08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0473C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773448493;
	bh=/Dwx4rH5gtieUEr2k+BpFKGvAPHr7c8wSKd+4wt//FM=;
	h=To:Subject:From:Date:From;
	b=jmPePQ084uhq/vSFAT5XlS4yS7NPUxrzEXWQIgCYt6a5kg6s0fTtkZFEtB/euzRkG
	 KwSUqUogewPhbo8vxgud0D9QAhkibz4LfKPEeyPgsXFYY3oDm40M6b7yUm6+ycSoPD
	 QaKP4eTeNGhOmFSdRe+RuYqVaB4RHFixxL2+QOfZZjDv21ku9KRdf63EH/zR+8eRnK
	 vnGbUKqxzZWyol/uLOr36DsOwuHJZBmqcx2vdXmUtUXLh50gYjcS7Q+KbVExhkRBHG
	 90XRZvmA+f7ztZc8iQD3oHa+tc9gE9XMD+Gne3Lg/yvK7QfRW1D6O2qSWM8a/2Cr3b
	 BMj+VQATcAnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85E107BCEA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344849357.6451.6197275928096759297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c34f14006c7b0ad6a788dd21c68042955c56d24c8cb419d4d8cd52f05adec0f
Date: Sat, 14 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773448493
