Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE2D3D68
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720226723; cv=none; b=cX0/Vs1BbziVgM7tyIV0GmrA8hhUBChjwzzxq1L8UDNbBFGohoDhlr5ZVBeMswSBZQinY1HUkoQcZEkCyPd+IEBZgPiK98HFQfiOZiWrX/MNxx8aKhOMZhsGldYSqxnsTVnuc8CbAXzSGitvQsMRcfJDk5adRGiBV50mFZf+Qls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720226723; c=relaxed/simple;
	bh=z/bP0ZS4SJpIQal+7kIfxWpcDhScPigYtutGr+lZqmo=;
	h=To:Subject:From:Message-Id:Date; b=WgWhS4wCI6ATZhuKfFFLZOwm2RG+cOURnrNlCW0SgCx+T7BXTEUnAVm0nIX+WxQvB+6hjISL+pB1ak3Hfy4pCNiMtGZqyToJf/csWIzXzCpfogKw+FY5cU3mPNFkaBvBjA/0r09gWrv5wiFI8KjUDiPb7BCVZq8tuJt6jgArvMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4IV2+LN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4IV2+LN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFA8C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720226722;
	bh=z/bP0ZS4SJpIQal+7kIfxWpcDhScPigYtutGr+lZqmo=;
	h=To:Subject:From:Date:From;
	b=L4IV2+LNkj8NClWXSC2lpQ5TmH2hF2FgZGlc4m8Nvv/Mgp6uLjQfTfD2WpT1YKgmI
	 pbr7oYnEGiDmfMAhqyv+tPbWwM/qU/jqhFghiEcqDWJBHCQDUs7JzS/Li5U73r7k5j
	 zb+JBchHWoLHRgUUV0XImvDcbPH2mf0fyG553PjRB75fq4UF2MZAKMKucGDahypO6z
	 DVZWaWLw29zAbh8ah8OXbXA3EqHTaC8dup2o2lV0o7dJEh5ewbhpSRN9tqTJSX9K1W
	 CeKAFEODJ/aFOdvToWawXGN2us8MNm0CWisS/bY9oxX5R/2C+npOudaXkUluQm+pGC
	 dxWKiitktCCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73B6C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022672278.22164.15869886305400367839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff61157ab519500cd96966fbda1f9c94a0d9e947e887a73af13c8901717fe454
Date: Sat, 06 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720226722
