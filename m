Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FE61FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81426C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670771487;
	bh=Y7MJdSED3EwmiGck0Dk17NJ/z564iv29adqHzsneh1Y=;
	h=To:Subject:From:Date:From;
	b=G6u2op1ejqDuPy/vF2T6jlRURAyBuA49VlOQjpY/Ygyu8xTeTzWFfHMj8G0fv0azr
	 y4wT0tWLbV4sujBWXI2SpooXJmhnz/vOjM5xIf8eGmXF5vwsf/SxGMZtgyDAYRj/de
	 KeubfjR8S6VMagKblEtRi15GhesHttROIuvI4qlzz5aGUswf9LK7H7MIK3bryCXhyA
	 bXrfYhcuRoQJjth9iQ6vBEv37+Y2AUBvLh0J2uHOqSbcd9CA1H/gwSSyRosBdbYPMj
	 pCEUO1g1uuyCH9CNWjvZRcQ11zRAhXEl8x3BU/EFXTdXVIDyJB1QoMLXhpsjntDmJg
	 UR2tK8XRyDaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DC9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077148738.3758.2148635161310917444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e0a59d872651f7ba00fdfbc8e7b5a027cd458a34ace6a9c13ec155111b13b4
Date: Sun, 11 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670771487
