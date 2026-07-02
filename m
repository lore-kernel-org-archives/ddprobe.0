Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AF74B8DC1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783000714; cv=none; b=Mi2q7nR6IRyeARZBozjo/2mJWpWp7ITJFhLiWy4KI4fhZ6VeN1A230G062ik6eE1obpflGo7mI+BfpwRCO8kmXS9dEMD8mzqBtaH2sXcNSKVnngs+LkzU2e5W4jkClBCT5b3bfcTNcxqyrVyQwwvrVkf8vkqeTGV/zZWFAUkSlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783000714; c=relaxed/simple;
	bh=tGwGioCq5oPPh7SOY4ImrNk437UBiRVEN9U/Z7WulWQ=;
	h=To:Subject:From:Message-Id:Date; b=G8pQguEVd3a0QwFix7MtGieeHNQtzwVopobYdnI2O/CXDoOfiF7Tkf7AIkU0sLAwSZwjw5NRfGmz3hEPx11hkuCHpFexWFm525kS4Bb1jAnD2uxO+bN1N2g19wAuQq4mq2xKCSqAlz3rZDPvQm4ZIl/plKB/F8NuEn/+YJ5pXSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLldRTPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLldRTPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C005DC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783000713;
	bh=tGwGioCq5oPPh7SOY4ImrNk437UBiRVEN9U/Z7WulWQ=;
	h=To:Subject:From:Date:From;
	b=dLldRTPVZ0gVzJqxW+oKuY9ZQnqCdhwJBIspxSvUmHAqszCayA1VsJe4Nfbmv1NgY
	 tpz7vn+j6EBr9eXD+A/8eWlVqrqXignt1DLeZU5EBZcczFAGz0lV0Py7zPSo8d6+3C
	 JPn+9n6bb5P3dDEk6G3VugTzvY6nQ5lHrv+gmMSNDSwvVH1bNRymKve3QcfwnVEVuN
	 5vWRyPi8+OPR3nx8ThYLmLVcYHsXiTb5Ljl1w8cHsZfHFPSpe7Xo6mtLE5QMa1Kz7N
	 QY2UsC67duAfyHoeqVCq3vNaVBqZ+f8ZlGuzEzmYWoUAAvQt+khZ6RTW3czquCDyDg
	 rEKSBSq9jji0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D02C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300071368.7788.11669572716939448285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2411a48d1408db8b5c133db58a858e68c427bf9d098f33691cb35a537ad3df4
Date: Thu, 02 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783000713
