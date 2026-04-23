Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC2636654C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776918453; cv=none; b=QTX/+fy1KMb3lJN3UHjef3P7pGinFkb+db9Wg7eewDoIxV75RGge9FNDqhWNNPGaXTL9XuvJhtxNz3otZOJXfAP/nmhrUD9Jp08HRfH5KbiRi2PwztGmiKZVdqDu15Vb9d5COxVDhsT68ly7kLGUxlCqNVG6O27A5sX2gha+g3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776918453; c=relaxed/simple;
	bh=l7F7TPRplm1RHb4XjzwU2SyINt1z6xtC3cM5nPH7mLA=;
	h=To:Subject:From:Message-Id:Date; b=F62lZ8pySNGJDRIQv/dj7/0Lgkc5xO6am9eUYp7jqMUKQ8kt+o/oyeU7uLPkd1dujVm6NtEnTwOt98pZVmN/t775/2PSYWKuuoEZzfntDqDBHI7UdrbjVSqFk1AhBXQVFLLMnPqxSFF+WZ2ATnY5eGevDntFmIJxPCy946HD9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1DpHdUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1DpHdUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC8CC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776918453;
	bh=l7F7TPRplm1RHb4XjzwU2SyINt1z6xtC3cM5nPH7mLA=;
	h=To:Subject:From:Date:From;
	b=Q1DpHdUvHGOOnVaiLaubljwmWOdj7RW0A5U32sPYUSrCEQSAjUV7eDDiV9zM0ud9e
	 jtb6vpdcYBYFy8z1SHpDkGNRAC9LfFQQ4gVom2sB8AhEtxyYfcBJyaxCbw+ArS/ELQ
	 FjMT3cuGCk21uzQMcAMvb+bIu8S2e/3HNS4cOw46MdSnGz0nYSNODbfneKrHf0MlYl
	 QjKn97PJHb80s5bfCF7fKWyGkO30/HoCzWn9mC0Fug95zu0D0WO2O5tjdaq4r8nDu0
	 QxrIvT2vKaZeaE8b5RNzPAfmIhvEIYAU6o5k9+PjXRDpQXqaz9mQiXTBfoOCVCOJRB
	 Vo9zCFHAifVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE70CFAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691845368.5659.4407651318961680048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229292ac7184542e361d651846771631c7d951e7d78d3536d16e09f42222a2f0
Date: Thu, 23 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776918453
