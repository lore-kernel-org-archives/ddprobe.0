Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF63637
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A95BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663459253;
	bh=rZ2I/QDC/4ARPfB+KxgCXiK5omzhoyADVEuRpeCGVQE=;
	h=To:Subject:From:Date:From;
	b=j79tyTkIVKHmJIh3RDhMcw0MHWftUHysSKhT6mE11Y7Xt40Q08GkNRFvxMgSnj+Da
	 19VHhF96KBvBnG4f0pbW9+j7BIty6EmCPRiKqDjyeDRJkNAEPiDckh+QAGNrkmuTka
	 on+z1btR0iIYKmbhoBionxQiCB/8VzL0owWFodvcSuhh7VBf2lR1Ib8TIL32ORwov/
	 wjkcugj7XdHYWQuyqXYNRs5cg3VJagr/yvx2R61A4lpcrSG6RvSA+Nag2l6UEBNlpF
	 1HrzhPtiYipELDbndTSprkJnyDLWl6XC05CwicOuHNBc42pTZFn4r4StUYxoG/StBD
	 MouCq78vgtzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527F4C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345925332.16802.7687529512886080268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15dd276532ff5720adbdcecea0b275287765efead85560cf4d3fd443ebf2b89f
Date: Sun, 18 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663459253
