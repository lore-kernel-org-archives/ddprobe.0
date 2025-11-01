Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEC37DA66
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762006794; cv=none; b=MsHLpyFSyNOH0yVqAiJebAe86OE+5g7Nj6qcZ3JdXCU2G2doYn4IjzRFYOsx9X9JXhApCiz9iHLvxC13b92CP3XOx9qiXVY/3hzChTgssxCoGiv2zEA2h8Przx8s5S6HVbPiuFDRPuTsjJVz+dk1jyvapp1wv6sMKiGyqAjkfxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762006794; c=relaxed/simple;
	bh=QN1Jj0R6G9+Jv428FjyNHQZiUnuj5zcm3D+kXOgv8mU=;
	h=To:Subject:From:Message-Id:Date; b=E5Xyjn3fStWpFCF82qU0l85i8JOgHjKFSNUHoz3YFpLecT1fqyCyvSgtuKkf9zAv5Bnh31TtH90aGdbODtWLD4n/GIJkqxmCetNwylkm2r1vWRVq2v8rYxSbQXCe06TKbBifayGdeNPdXiHon9jbWnZInTcvm+ZwZDhu1h2qCec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQQ43iWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQQ43iWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762006793;
	bh=QN1Jj0R6G9+Jv428FjyNHQZiUnuj5zcm3D+kXOgv8mU=;
	h=To:Subject:From:Date:From;
	b=uQQ43iWWs/T/T6VkqOT5jIwvAascu2ZcwAuv4xbvtarjZRJ6HofPTZGWLspiH2GVc
	 uvpEPtFOv+9OYJVEh7aund040B7Hm2i12yV+rprYd9MUpXBmpDTZoiEcchECNb1pBO
	 /30OlAtVfiFLiw4xHuSqf5fWIOWuCd2sBZI2FEuc+8jATJMAvyInkNtOHgORgAIZ4D
	 sWh65SkeADkH1w5M4HXajaFEeGZ4WR+ePS6HkBEAYbhdEn+q8E8uE4/QhKMnli4SDC
	 gtwtIe4gb4ibhEgYr8oPXhsW58yHX5iUDYHeoWloMGZNKoZx36hcdeq430FgOVpDDm
	 BUmyPzV8aLjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD99CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200679360.5100.3531697336309937689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc49cae1a1a94542265c495cc43e1551234a0f7390e062658b21fca70eeed957
Date: Sat, 01 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762006793
