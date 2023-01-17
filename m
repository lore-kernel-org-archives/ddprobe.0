Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED656399
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 999E8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673916087;
	bh=T/Q4Bk2pBRAfzrJ7p2p1/RB5ByNDhzNcGR0o7VFX71g=;
	h=To:Subject:From:Date:From;
	b=XUHxhQ/O/j7tg3jl7f/9oqSaGW0HwBEdz0qrc/eHOrOR20zbwzFv8a8S7y3NcUt5V
	 TOIjoc2gm1s/MG1FflyqszfXpmZgiSLDCju/ROGWPMDuPDccWIs6gnbAcn415VVrOK
	 KGxfCusDfUdDu+Y8ZMHFUOfSCOyiCq8ZIz9TgDDLug/R//rGNvCr6I63HQXWHt2ow+
	 8DCv7f5zdKq+QcNnrTsvRUdfs8p/JA7tVRiM5AWvltEokg1Vw3dtXDiKlN4rMZnE+h
	 nWBQyuu8mtEBCYVE2wearHWg6LO9TCFiMOKzcCgt7cD4yzIlbw0Tm5yyDJ6AQlEqvu
	 tINRdI6UjWC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A9AC46467
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167391608738.22926.18247560098607868363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6364861ba2360ad44f9ccdaa68fb6b8b079c67421358485c6ba801ff84774ce
Date: Tue, 17 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673916087
