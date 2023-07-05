Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA94C75
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 04:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF554C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688531768;
	bh=SybuNktXhud+PohFGQ1/1DZnxtuJvTbVa0hUHtQT86w=;
	h=To:Subject:From:Date:From;
	b=Fl/7ea/HzMQ+PwCGDPlUFiMb7ZzMrwCADJ/oKTuBLfHCPbJm2bcVG3pQgOB16dXIO
	 B3P/udgoQBD1qBcVfRa5TLDXkO8/hVW19OiGSSSdnkRRyQs1EfaoiQYteJEFZPMwr4
	 VM1cjbx2jp9t3LRB1TAT65wf/Omd2E+ryc5go6yLZJLPJGqDHsGJAoVcgDB94dsWoU
	 NuwQiJlJISx57v9FdREiUiYnsyhEB0vw/QmaoUW3ncgI0YbS3v75j+L4x2kTtoyIff
	 xC66ctk2lfniW3OFRbc84pTcs9OMNN/tHtAxKD21U9OdKOGI6eW11oFuVBdC/rsrg2
	 P3TV29+a1mkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EDAEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 04:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168853176872.31146.330817878396438957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbbfe3f91ec167b233a69dbeace7cab447e43083e6bf860941b6bb982605733
Date: Wed, 05 Jul 2023 04:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688531768
