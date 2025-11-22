Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410522E645
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763838714; cv=none; b=sSvceLGWzWfL8oVXsjbqRJYBs80S3az82Cq9La96V57BRL7qpwrLPIdp1xWZ77NCR9hMBN5cPZT2P2A5ZYmUrSKJ8MTQSZk+yiu1Cyz/MgA51ZiarFbmOLdOE/MlRAr4pRCkFNYemBUm+XNcg8YGjM4g1maBYJT6AHco5PhWRWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763838714; c=relaxed/simple;
	bh=+p36vAy+5QmrdzFXRO6Hj1UCDdl8x0Ebd5Y9W2oTTfY=;
	h=To:Subject:From:Message-Id:Date; b=eLZ4u1qmutCIBjrQiRJPEKKBbhilIfaP0gJyNfVs3ljq8+qui2RIqzIlpnj6i9bE5MQtvHAhc9rIb9s0AIfKQRXHmrzamFAsZeGq3jB6bCGsYMo+IvxezdGR5TDtpXwseNxd2LmvU7LPk6me+FPYf5k+ZQT8QRxyEjX8VLG09TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4wjttT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4wjttT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2A6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763838713;
	bh=+p36vAy+5QmrdzFXRO6Hj1UCDdl8x0Ebd5Y9W2oTTfY=;
	h=To:Subject:From:Date:From;
	b=c4wjttT2KfSRoirHuXMPmtDuBzXPPkURoG4ibKqa9ThMBUPjAtiguOYK8g0qsq45l
	 Fwu6cktoeo2Beb4UpkTgy+wTGrsM9+YwjQY5YAcQrWB9rWwwOpRnLU47E0WOMtnRdZ
	 Ekh6wSPKrTrQeh7iSYSVbBHtqZZcbmK2LfKd6LB76Ny++rwqY09t45mWSb/hB7mlOp
	 jE65hyo5P93S5nxigGcwUUIudWjsRyz8Se5wJc9wHbQTc/WsU0IWxgI9VzsGMsX3yd
	 JLTbO1ablfn5pyx3lFvTSt2hvr092P39Ao3Ufcs2QnkUUXz/8q6X7V1QlXbJbxOj+f
	 F2d180Pq5PoWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B8DCFD2E3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383871358.26525.4998817835739636109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b68876db7aae516105cfe51adea82f2848bf2536999c277cf8521ea9212cf22
Date: Sat, 22 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763838713
