Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CC43D5252
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773930894; cv=none; b=Xr3LzdM4U4qfCypKBKBpOTBRQQhKyGLEtleqcWwciPDwiyCFNiudf8o5Pfnbk9rsQ6RBXiSVFtPutFcMSyOqHNYBv9QflxM8EMOQSdvLVkwHO+cOmMsvIH8QDTAzx0h9tR4gxcesG0fwnsK8t56wkb1CyizUB5/Ij2q9sp2NOXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773930894; c=relaxed/simple;
	bh=2y4dbYZ56Ud6BxHCwP6Dsc3mOm/AhJLI1HdXdmk7+3g=;
	h=To:Subject:From:Message-Id:Date; b=HmuUchCMIuDjJv/sCXU08B3gZKWXoxkRCXbDO53NqtDdIdydv0UMC0nS0u3xlK/QjBze9wyDuCpsSZDHRLTc0CSpAsbziJ8jP/LUr/wFSyJViEx9/VPpOFeQG+ViIMPpCbKrwf6xd/cFIRk+ZFf3ks9uLeP7MRfMq9qAbah+GMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlVQGoW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlVQGoW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BB7C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773930893;
	bh=2y4dbYZ56Ud6BxHCwP6Dsc3mOm/AhJLI1HdXdmk7+3g=;
	h=To:Subject:From:Date:From;
	b=OlVQGoW6aJzO+KLOBCZn7GQLEMzu6JuTCpI1VMwS2lJYiij1jARjVuC8QozVl8DdN
	 7Q1lwf/92POrX2F/e28d0Xqeb17QWIg+K3vT5F8mgwE1tKLqo/zL0dmpJzaI7/jznE
	 vGYHpzCNqpKEcal6XxFyCwm+Qdp5k/JNdoUmjvgLWhu1RZTBkysrv98bpk/7Pz1cMw
	 htASdRuCXDzWIcMOSVLvYf4EL2TBsGpqk6hLUq23XffYRwc/DMbgQE5o9ijmxv1/4o
	 neiNFCe8AUMhShgV1pdw37L0kReFndSkIFzEn8ableFbzEDPbZ7n5WrgRNUd7sJQRC
	 ZATQh6bXSm85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002B1090233
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393089358.11618.16660147401532575907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7273ffd98bacfc99ad2b3353536889bfb50f23fc43fbcfd28917870e58e85d7a
Date: Thu, 19 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773930893
