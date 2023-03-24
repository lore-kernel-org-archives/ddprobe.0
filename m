Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E4917C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E444FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679622605;
	bh=R0MDmA+ac5WFR9OLSgaA8DfdcY7Hn0Wt/UHMTg9yQxY=;
	h=To:Subject:From:Date:From;
	b=PPhWvs+E36p4iKn3XPKobgkga+60pygtoCbbmmTb70iI9CnLgPW/GrYEfAbOCmmBu
	 PHYKKUZ8I1nkpNlRHJ/IZG8FJ/LyYJ/40aMRE39IOGZAq0YmN9RnFh8TH3RpMgWEem
	 MFAaQge/YEiTUtx+3zVFNyl6ZbOLdd6qkB9dwFT1NgUXC2rnzRi9XqR6V/SUuSbsNZ
	 NrGZM2uvDqZQ0DCJQLWJPQsZ5WlvX0pJCDjVLTKqYuoEahU8i7tYmm2SkJ2+VM5ZFG
	 S+vLNOjeHA1sOFOU3Au8Mn8qoE4Rz6jbALFaOS5adz9z0rBCyJyuRwvODCQPABZ4XJ
	 6W2YuuXQ0OgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C56C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962260579.19453.1005036920150587562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a77f4aaf1cac41897b7c25906e65654ca294d3141d8de52e8f2dea7d72b3b38
Date: Fri, 24 Mar 2023 01:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679622605
