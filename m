Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC19A64C
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD74C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670560887;
	bh=/HhLd0YsQ8kudfD2hYaXs1LATjRw9mGUh/3Hmb4verc=;
	h=To:Subject:From:Date:From;
	b=OS/Tm/CjyWSwrGTiA98omSY1WdEpXd9ZJEO4ZPyb3Mqi72gfNlZ32hXtiyPK0Kqxo
	 3qKA/QOBor8HRNk199O8ByqijVmXE2PYEhDTm0xx+uKcsK8O+LJUnZcPZwCY13TNEQ
	 FVAxiTwvLJFivGM5c9XRyTrN6zm0tZF59ltbANSecUbCCN/HewnTtP0uBlRiJ4wtPr
	 vdytZmNuVHMohe1uqyIZd0CPsUfj87xbi/xpBxKLikIpPvdLBAuFl7FK1z0d1SZX+d
	 ufaBgQCKXuLWH5cZx3m1s3Wjo/V5v3lyjL+UdAO/SajaVZo9//LULH7EbJ8U3HScOh
	 KqmNlGSKe9Y2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6617BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056088741.25172.11033794046181189580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48caebf1c22c5e6828f28ab60bbc9677f804560fd3851b873078ad850d86f80
Date: Fri, 09 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670560887
