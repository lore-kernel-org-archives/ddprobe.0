Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30C525A2C0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747718993; cv=none; b=K9hEqYS/cxY1garKXm23vYHDmnQ9e2eMBaWA6LXZCepxm8jH/devBKmag1kuL+Lc6OSD4Ey8YhCxeBZk0/uTbDD0vQ97ej0y4TbmXJlv4M9AxiITrAiUriEJ9FbQdHzpZ8K8UyNGIBvPFTuA8HpNptkvfvs5X2031BAu+8kAXaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747718993; c=relaxed/simple;
	bh=pBdR2Uspu4tixjm7kvZw/86yXsYuXsO+rSp0Y6rY/20=;
	h=To:Subject:From:Message-Id:Date; b=BAoTZBZ8TjcDdkD7CtZd8DbU4X1nV5GPRCOHKAXp1qnSDJRlD7ObF6I/9kfh9N0Aar5hZ6xNmEUB9baxUcLUGOT8LlqZbWrrmFtMiu63UongxEA3qZScwmEDKzW+D1x6brPM5AdJUA0nULk0B5S1Diigevlgo7RFc0mO5uKCKPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/yuZ8js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/yuZ8js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747718993;
	bh=pBdR2Uspu4tixjm7kvZw/86yXsYuXsO+rSp0Y6rY/20=;
	h=To:Subject:From:Date:From;
	b=S/yuZ8jsjBEeNl4L6GANt9ACN54JtrkyGSG3sK5XlUcCU/ce0H72v6Mo9narw+37f
	 tkvmWO0YiKnM0Kaj5Pfrx4y2JF3lbFqattFV429Y6LcWlbFX5I1vjRKMqTH36Itwev
	 OetL19NLhbjbAaLWcwrnwxLumcTb0Li+LKpi3I/GQO6nW4K00CT+c0iLbA1t7aUdPK
	 B63TaPehRTQ0n4ZC6jaBz82w0dchuIjaMd8IU62DlfZCieypbUnZT334Aaq0upq5kA
	 ZJiRJndgAwBN45oXA+Lw+QVOxPk0EiOMJs7MIsIZ/LKi74NYrNPZZNWyM95jfgsQgv
	 cEi1/oWOLApDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A37C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771899357.17643.6492654897038813827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37accfb8d18f92380add5758d53bbf4f510a59801cd425cf9493803a9d84e8e7
Date: Tue, 20 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747718993
