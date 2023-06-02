Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961978493
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DA3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685748485;
	bh=Mf5x3RbDHJTQ1GhLdvr+hjNxDmbftmS9P6BlbvaQjCQ=;
	h=To:Subject:From:Date:From;
	b=MTZBNQDW3T0lwqSeaf3V/VRiv7ecUYbNrL1BHGealnzevuMnp5J4p+7nej3QTHLYT
	 URuTLgSL0tF7ihZdsZ4BVYQgDmrqtKHaNUpkiJAQ/g9v1aWMC2o+oySrE/tMJBNhEJ
	 UYT+E05lFvO+2lSX0vT2rG4tOfBI1X78FB8B7lx0Ah60kIqfhb2mWdiBCGIvAhGJAu
	 LcwFP2F/GyGuKwCYbjOol5AmPHFDqSR6K/PI1lpq137y0CtVZXVXgPLguMinyhwd88
	 hHf8ikutjvy+LW5fgAZadaxYUVq8WgqZxLLTrFCVjArosIlWCv61txAiSOg9HSDJL8
	 bik43fP/Yg+nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A0DC77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574848579.454.14058486169746171893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9ddbcad49efb10a3397279d754e91ab924eba3cfe214e06863f8151926e40f
Date: Fri, 02 Jun 2023 23:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685748485
