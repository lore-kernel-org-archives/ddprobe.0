Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E67161
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719015143; cv=none; b=soGTlLOb1ikxYt0eDMtaPeXVZsfVb8tWy/ETu9PWrJbAqtwgd0Bi7fKeeJ2gRWQR8NUCSfYI8vbPUQBj4ypOkclnspYSjWu5nVw2I7cd8z3g4mr35j1h3DPDfAn0/rIHH4bRJ80ko3arb1S3aIF9JdN5S7Qjs53jhLetqv2KZwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719015143; c=relaxed/simple;
	bh=aR9Qxt6XJasNxDPxJitjiNf1/qkkYZ4UzrbQgy0lf5Y=;
	h=To:Subject:From:Message-Id:Date; b=pU8sPKU2MN5GcIXJBU6EXE/JNVMNFE9AuqwAxWeaU9b+3DKMxGkwn/wrCMjQGU+5aRlk0O6tZSM+rmBatKqRMY61kMbGYsmF3XOEZnFWAeJLUnh3zvGI0y5Hj8x3atjQP0zQPtz+VzdSdvdSnsZ6aA+qY1a8y1SVKYWU+Deviws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZQHn9eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZQHn9eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE57C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719015143;
	bh=aR9Qxt6XJasNxDPxJitjiNf1/qkkYZ4UzrbQgy0lf5Y=;
	h=To:Subject:From:Date:From;
	b=GZQHn9eEAieY/THqD6tDpTpacS7v/+H1hyRQZebJAquW5uz6gOUjJ00V6Clr1ouYl
	 NXtaW2sNnzmAuxa4aoGT3/DEiwVdvAqyBPsulKZgaW5rH7Cs+r7Vj3duN/QxH47d4q
	 iWsMjKJKq131++ev8t5k6V3b9tjUh4DGn6PD7w/cCmqaV+k0SrSWP8mxtRBsu9ACm1
	 iqB+356vQMsG+S5MJYDsq9cNj/M1iV/5N3j52Nhs/LUR+fopoIGAO2N5zXg1S7B+pZ
	 VDm4KhMRv/YxFIp7wZiiRCXjs/l+oZDIeeNbArGUv/gRoPdlWvb3zvWA0sIOizfvGJ
	 PJryblq2ip1CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D773BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901514283.30245.17718925820662151857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2800510698819e3fd54f9b4b53a1fff3499fb76e4a1e71ae4b402a1fd1cd949
Date: Sat, 22 Jun 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719015142
