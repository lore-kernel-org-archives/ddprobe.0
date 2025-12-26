Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D392284674
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766750634; cv=none; b=DRMsaKKDNf6a6Kd65334pKow83Ew3Jzb8bq7dUlj9EHHBMrAsNPTt3BJHmHGUdxuJogdWd+hKyfGKNVhaVJ4dy1nTfU1tFKi8BbQtcbPTHf+vyDg3YXaAvBzhhqIRGXWyILK39XwBQFyWm5gtI4ivlTKvi8+VIxTcZhnQsk9u7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766750634; c=relaxed/simple;
	bh=aP4PAdJp17UO7Ahy1Kma/U3qx5pLSjdmVcW3WWEXC8g=;
	h=To:Subject:From:Message-Id:Date; b=W5xCyxy6pMCfMaOQAdnAqozCeq6EdiyvQtzivVFC2VGSrEG3e50jZheP9Zj/dnRq1Y2MFOCoXBIf+32HrSIpJBGJru59W4U51asn6dUloXPr4WTDODgTDYDO4RF4SkxVeYl2GNLgtqJLOetJiL5t6cjZmIN9QCZMpq7blOWEjJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o42TPNXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o42TPNXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3626C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766750633;
	bh=aP4PAdJp17UO7Ahy1Kma/U3qx5pLSjdmVcW3WWEXC8g=;
	h=To:Subject:From:Date:From;
	b=o42TPNXhbvrXV0y/yPVJgsl8VvrGYQ/tR+P8BrZtx59Y0JCrrGfUEw9wiwpbCu/J0
	 i8gAEsmRTUmdzvWYYd1bBGww1dRuUeYc+Fx/i7eAjFAyWgLScWEBLJch0Rz5NlzozD
	 eTMSyc1ln6Cij+hISlstVHhoXr7t3LHg/CT3Nkd6rdneDlAo/3YN8C8rMyry6hCsZC
	 9lA+bV3JCQx7hVmbyPr93U1SUIdkzeWhizgXgAqeaFGsYU/sP6urSjlzB1PEgOrYRl
	 z3YTNJxg/g8AdCoAWQNxjnV8rOx5KKXDT78JAMTXg20H40E/VTUBGpbsRFNB+5VB5I
	 n72Y+XIhSe90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E6E8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675063364.18229.6301416227804059460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e30bc566054780458d5b3a14077197ad19360b42ec8833c720048b165e111c3
Date: Fri, 26 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766750633
