Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BD81DF261
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774350893; cv=none; b=UFZ6f1cBoNmdSthuXp4hv6XosJV/5HUm7dJpbDp8bWju8dK5KUhNX5AsdZlBWBXbjrw/wZAM2cqTJigV74d5bpsZsSHs2kTRPwySoX71RLiEPoOeKK2/FWOheYvAQbH4wh0MAWQJcOTvQh4e+bRntDjKIDzR7k2s9dR6ce0RCBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774350893; c=relaxed/simple;
	bh=Xc4486XQVV1V+6op7uVgQ3OQX0ewto/HW+0FQuQcfVo=;
	h=To:Subject:From:Message-Id:Date; b=fk659b46qlkOwtI1F+Q/BXX8GfjKbxF4sNgn48aqY0KinxhNArplgQUuTLOaIL+XYdoZShnWQNShoj3u9+DPKyldZYSXDij6qpF6vxLDHy9fJpmOCAIpI4mvG0zMAbJV7Om0nAY/uUK2TRXQFqy+Dhh7tzTLQhdPIgo6tdflEFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZMB8aNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZMB8aNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A7C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774350893;
	bh=Xc4486XQVV1V+6op7uVgQ3OQX0ewto/HW+0FQuQcfVo=;
	h=To:Subject:From:Date:From;
	b=ZZMB8aNUTp7fpcJUMijI5Zdo1EsAn0DmHrzLLrUDCya+Hcla88WVvn1ENJv08zCCB
	 vapHQH3Oi/07c5imf29p1RcxdFs2nP7kYri2l8HSZHrGAalP12UWfI1lur9qelBsFQ
	 EKem8sGqVxvz00kZKxsGx+Z15HzU4osqem+lLCGj0S8JOwOLxf9x8PF/iX/0pPCTYX
	 5z6WFw7Ea+qiT9hWgbSB4+v70DphOzUNwIZkgCFXhnOoGkL7/fawyoeiFbIKRNGIFT
	 NACrNTZ1sm8fZoVlnpbiWSe7soWaUS4P0XuyMiVA6JVoqTwgk9gbwXz5yhfS7b9zg7
	 wLaXBiqC+axnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92430E9A762
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435089359.21154.10992095667997010635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f64f9cc3bc9649e713591a1aaa5a43295218efa5989c07c5a2c3a327ce2d5b
Date: Tue, 24 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774350893
