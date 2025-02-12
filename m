Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F5255E5D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739381934; cv=none; b=qdhFSvl0q5mc+ejoqcRygLHJ4ZJG2TcRO7qOdeXve9cctPfkRywLjijJAE0OTpfnth5jjgIwSER47H2bUqWLQP+lUiEL6lLl7+EigKR7cpPbw8u+KrSUH9FrlYPHgcJFF3DRF2fPqNLRbwTVAVbPyymEVHZFR14iF+ol4+vjQIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739381934; c=relaxed/simple;
	bh=hBYkYHR6tYcdZn8HRQKiLjIvl+apw9yS8m0cZbeOCNE=;
	h=To:Subject:From:Message-Id:Date; b=EazFQ3l9/bDBJDwTwD9dMyGMDe3oMbzQTboLVEhcO67R4cpbj/W4XSjOhhc3GegAKycuFCJAQkU5Dq4K9D2A2vwzy3QRY4hNzsz6yVAOtsju7VnNqw0AhNBEUCwxrd41arWzzQaVG+5osIiNHcCHCO56J9b5mvrgDVxa2sPDwQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olgRYSAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olgRYSAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FDC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739381933;
	bh=hBYkYHR6tYcdZn8HRQKiLjIvl+apw9yS8m0cZbeOCNE=;
	h=To:Subject:From:Date:From;
	b=olgRYSAxtV4w6Psqxs2rwlRdXdoLwVExwr71vhrlwADiepojuDgiAOcjYDyZHr/Sk
	 L7Ni20Hjqgo1AatLVxJtioTpeGNMczynbwsyN8/h/125+8f7EWlj+hs8iMQcrA0lKS
	 PvmW5j8xgTeE5l4SzPDf/IkaZw2lgj7QMCMbqGTw3Q6GWbdYunuHk3e2AnH1FITcY7
	 2TcTPNtCfFQYwzF7AZTLiqSh8+wowqvUxuSJCL1mO3yg6S2EYUdUuGy+Rwj+asrsRD
	 7k1aoaZQEE3QgNtwsaq2zL1fJPetrFMxcEqz8Sbba1eTF2jmUEA7ajt+P1PDNucu1x
	 gXIZZ5TzX7lCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF1C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938193358.2076.12134154440204900682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980d6b2ca30830da24cca6963276d426d0e795f782e377d171e1e6d2edaba214
Date: Wed, 12 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739381933
