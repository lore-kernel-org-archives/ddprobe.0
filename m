Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7270830
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777342054; cv=none; b=mgzSh0vtwYW9MpnoAO/qxnfOLGABt1/tAXUAG4aHHNj4qq4KhG7LGq9FnDaq5+ayxZNWkU7Dsdqd114nPHvpBmuDrl6As7v0XArkK9Vp5DcDQZD6OZQM2G1qzucy9BygMhuyHciBwAuFBgRmQB1vDfsBn2rM8MlndkHz7/9EJhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777342054; c=relaxed/simple;
	bh=J9KYkv46Jwzsi2B3YIOA2dlbR2cavsz+OHpDVQU40jA=;
	h=To:Subject:From:Message-Id:Date; b=ZnlbQlrLtcc4zul1+JRbTzZSqop8c/ikxNM89OXEgFPqQhNoyb283Q3DWfdRot6l/x9nmilr3LBr4TKryDoadPrFtGvpWTp+3KuMGqOM6S3lvHGo/eP0eQGx6CLiPCmDBRMLYB7J+HbMXVwBItdjAuhxMjSXEA/PP//jktNRdsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVwF74Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVwF74Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB863C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777342053;
	bh=J9KYkv46Jwzsi2B3YIOA2dlbR2cavsz+OHpDVQU40jA=;
	h=To:Subject:From:Date:From;
	b=lVwF74BnF+X3a1soH9zHzr6t2lAaV3Q9fJeb/PPEa5i2iIaLfcWkCRRvvA/DP75C0
	 /9yVY0PF9qQB2y01gpaf3N8Q2fVj2MDe/jtgwLcBeLxbeyiqOefbYt3TQzTUMLLVig
	 k5G0W6B+Po9W29QcFquOGb4rx1afZH3EXVrQ1kE4pnGDenZBmLVvZxt8xnhgbgeyMv
	 YepIB6Wv7NoczzunFjADjlhhjRlNVFrzQoPhxacWkHqBxsPbMaTL53HFQba4FwaAOR
	 X3/TWr+yRKlF8jojMv4RDS/wY1ZwxGhQT/fhZOzywVKi/rHIE1ymJBslNH+EK+Sjxh
	 9CTN0NW4s0pGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE7FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734205368.478.3702589925685529292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3e313f3c3d2697ac0ca4237c57e200942506da0bb0f82ca532c0ae3bf9ba5f
Date: Tue, 28 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777342053
