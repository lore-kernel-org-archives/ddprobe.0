Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A28D15E97
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748715594; cv=none; b=Rpdr5+LIvDPzS41N9rvPANvCnfqPkoV6JHvo2o+i8Vz3lvuY2AX5MeydnYyJjq5MRL9eMeRsYBDeAur11IPh1i8DerMAZDoL3yDTtJfouVg4TnkgL4nYSzDG5oQM8OASvcnMCemB2no9fTeW9huB2K9h2cFFVj7B27hzIppV2z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748715594; c=relaxed/simple;
	bh=CYWowzniYY5mUfwS00Pk1DpklZiY5uRDwMLNMy0WKCE=;
	h=To:Subject:From:Message-Id:Date; b=Ys0kNyPTf2Rlw4CkwhNg/JTpMehjASxFrZgAIRVC3641JmDufQ0sZ60Hw+jcINpo8urYDqtrH7t4Ksj/CYSGZFiAVWeP7liPQiYInmeW+GKmvjc9HTxWV0EF/fo3b0YDo06NVgYPM3/DRRPVGKWt5K+POtF7RVm9u6sZ2mamkrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kznqf/hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kznqf/hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748715593;
	bh=CYWowzniYY5mUfwS00Pk1DpklZiY5uRDwMLNMy0WKCE=;
	h=To:Subject:From:Date:From;
	b=Kznqf/hpTR3jMKf/B1YfuzhMCWobm0emr2rqgoITBm0hcAywlTp/y/Ro6Hc6EtDSB
	 hYyUO2MOYd7g2Nyi0OPvIvRivcWWE4ZLrigxHB5nmNKKFdvqH54uJ1UOUfacnK0efx
	 pRsVWsZB0rQ0hKrFFvEUsVJv1sM+HH0jCGyLHYAGOq9GXaPNHJS0z3C6P5F5W90DA2
	 66t2haWmtkcaIcTY96OnD16XTtX7riG0YITnVFynUGJ9v3pxG2x5ngyAEa0g4yA2vA
	 rpQsnAs0+mSjhYCCE+DUS1zAiorTtA9vbSamutzE7axkxBASvJZjbdpADEXZ+w+/ix
	 z9tbEDOoZd6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D3C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871559360.10890.6920420590571645695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa12c0bf860bee54f3018005f1923a5a528821f9151521dd4fb733508c07002
Date: Sat, 31 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748715593
