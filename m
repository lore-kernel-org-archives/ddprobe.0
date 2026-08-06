Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029703DA7E4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786002634; cv=none; b=Lab7rVk3cfsfOIrkuVr1G17GJB1qnHO9/i3QzG3HNFMc83X5Us5a/Zgw1Xe8w5SsQ3IfcvtgQ/EBdn9a2o3AzF/eiGSQMdnXlmxadIEld01zK9tszxDDxH0sLBu3wbOhAa6DhjNX19RAR/Y+b60PdNvWWy5Z8uLzutWS/t7KKUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786002634; c=relaxed/simple;
	bh=89GaW1Rpqa49FTHONO8P0BXMlp64iXYL6fucOCNTjfg=;
	h=To:Subject:From:Message-Id:Date; b=HBFSVQz3L6tWLBr47KdveU62LpbFfcgIx4OLX9qzt/VT16Xv1O2t3aRKmPuYmHzGiFy/Nvite3XOs3NLDwGaFmwUltTB/WKa28V6Rsj/ZTu3eLtZBWJMxHvBLilL9H/Bmx3HSZ3GSfDJQa4b1nmfZcZB/nml1ioYnS7MDOA23YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL1Ku/j6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL1Ku/j6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C511DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786002633;
	bh=89GaW1Rpqa49FTHONO8P0BXMlp64iXYL6fucOCNTjfg=;
	h=To:Subject:From:Date:From;
	b=nL1Ku/j6YjCTWPEf0FFBg3R3VBS3kv/PkR96rfDmlH8s0dxXRHgcs52bykBivfXxO
	 Q/nYTbPJyOG8+W6JVfM4DZjku1pANbqR3tZBwCFLeNmv5hd76/1tIr7ZhFYtxTWXKS
	 hXHHIm4TXjvfyW8u5jx8m4QH/jj+4rGmt2VRza3mJtQFUXQN5L5BqKq8D8FUFkz+2b
	 VH4+SLvpPsCaKh0OQUkGFX4+CyMOqGDFu764BFnr/uP8REqcfJJXp+EsRKXaWWqLml
	 Abxuhut2s2Ns19v259L79gSV0azeQPhEnoDjcNImfdXFBZIC209Vx9mVjeyw92MGFh
	 T/rwEGlqmy64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C47C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600263371.8313.9976684662408847897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26fdf11fbbfedddff7e9727329d0e6a39ddf4a852a0f5ede2e8d6b75ca90a57
Date: Thu, 06 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786002633
