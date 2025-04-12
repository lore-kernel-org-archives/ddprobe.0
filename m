Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D544645
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744440594; cv=none; b=HWKXvMBP1hFpM7Ps31cRBaHcmXH42dVD+ILGQI98qE1H+M6gKxW+7uFoRpdN5xLwYrB9y0xTy8k1Bo3dcMJ/Fpjai3L9BXCNEeoVzweWNCQMz2OclZoBZYKipvyi99WLxlhrr+6dr3hBuQRWrrYUuD0fqj5HWtKaIB2UMH5mRzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744440594; c=relaxed/simple;
	bh=K8It7Rtb8kKZdaBOA1AR4iFlFOeH6uswhl3LeaNbHSo=;
	h=To:Subject:From:Message-Id:Date; b=c7+Zv9IqRaB7UgP3xWND1D7fD4Z4Tbv5lKM9lSPlfAwtCO+BbvCKpo+ixk0w+aftl9JujgbmXjKsk4DpjVQ7nK8I1pWiyXPR0+pmPtxMXCGJFW5k32en2e1OF6GTgUW8JgZezhDd5odgQ4pU9S+Q8XpxsmDginFdTrKpCPkgwe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAu5zbeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAu5zbeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB5CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744440593;
	bh=K8It7Rtb8kKZdaBOA1AR4iFlFOeH6uswhl3LeaNbHSo=;
	h=To:Subject:From:Date:From;
	b=gAu5zbeK/kjKBAI/u85wO9hIVb7QAFqEg/AyqczzlyM2NkBOeGBdFDDVHYxSZsfhj
	 81GgzR9p/l6/PfBiY7ik+Ck+++0uNyaw4kZD8TYS8dMvmq2/nfbGUvPAFu43qJpB7h
	 NP3v1OUlmRcVx4IRmNRLULHi2AoUFR4HdVv4G6cEwKENwrXoAcwkD3tgWA04C9L4Om
	 ldi/JDt7hGmrYfWI6PMvkiC+SVoU2rGANJG9gEHy3RrtnWe/H4Tu7mi9M5T4IejglO
	 cwqcsqpheptTlMqih7KCqwCCHcCVgf3+gF//9whNxfyPrQN+9eEkmE0vf31H8RO/G7
	 GR5Lft3zMYkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FCC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444059360.28157.16824325247346588723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0d8c3a845fa31da505f7dd89f6717d0a43fb08d8bbf364c78214b04556cc01
Date: Sat, 12 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744440593
