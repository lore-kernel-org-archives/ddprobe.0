Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A9418CC13
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786026634; cv=none; b=OJxiMoscts7kDqiPclIN662f6PEqVlADOWDptcm+0CFgHh6GkJqE4B/m6lHK4WrqcyAuX3TRV0SwYVHfzTBKJXzaMjTPALHO2XubC8CaGvd0jdqPdl48sBoiYElcfs+kDjvT1SZp3QvXsY23+zghR7/kWHuqoBIkXPwFMUNHNmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786026634; c=relaxed/simple;
	bh=/BgXYTj22onYVDTO0CQtrdq0M7pAkTSy7+EiE4fJYZw=;
	h=To:Subject:From:Message-Id:Date; b=qhAGNoi1oqyYQi191mpEFmF1wdu2V88Z2J7L1SAnQjYLZz1+gCrEIRqRG0Ssxn089v4lGyEzl5oGdy37+MBehVDlRsisXAe+LMRqsrYNWLwaypYr8wZKguueeX9V8HA95gn1j0QStG0Dav722T+NxPfrReWiXQ19p+pJaHXT0nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I221ZPR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I221ZPR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA6C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786026633;
	bh=/BgXYTj22onYVDTO0CQtrdq0M7pAkTSy7+EiE4fJYZw=;
	h=To:Subject:From:Date:From;
	b=I221ZPR3BfDSYbvbafcM7HeAuC1SE7Bc67280eWkuFOw+3HZIYbFcS96jnEU42MSF
	 /aYaubVGPDHct38vpBSN7j8j9c4DFPcLl1Xn6yx7FwVuePoXG8Gk8TD6wPwZQdq0Fl
	 LKdEcTNRpKkqIuegZge1UeZB5RIyyz1TFahNOtAGELkrV+knZ5KwM6ZjUcdu+rJPeU
	 InCCtJ0au32mib6oDrihUmxA/XvsX0IHsVPKykw/Tc3gLp38ZHMDqhZOxALb1Ew6Ey
	 5tnYFUH0RrnG9aY1FW/+4SKx3j2ak++mADEF5L2QhaHYtPUYUGKgXQZnqj++Mig4I9
	 7f+DGdR7vu6xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5FC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602663370.18006.12548013587580249053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49f4b77d8be9998ee65867c251588d836975b4010a7cc41fab17619fe80134d
Date: Thu, 06 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786026633
