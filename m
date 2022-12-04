Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD8417C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A30C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670130054;
	bh=uHl1UPCpieOc1IvtqCWV7eLf1AzeezlVJ+gwIMYvARQ=;
	h=To:Subject:From:Date:From;
	b=ZPQcaOKA73DCV6Fo4tAuCwSw1RXCqC8tsd3CtA/IuU3e1vXcump5Z149fPW1PChEe
	 pc/EX0//Co7REOLH3odIdcj9I3TeEpQPLV9+OrukSLT8yTREvVmrIYkXIfpNmxTG+y
	 9mQ+rPvVNFD5trAEaGSNaEI5YChXqjc5bXcOCq3+byRtzT1Zt5BcfGAEctk/OV3pth
	 Q0y2HWwizzL0h/BdjaocEzCwLdZUcw++hjhCy+aKlnvBtLeXaYkGbs6rWlO9GR1ikn
	 LiVtHtVJ+My2SLqMzfifz54B21inShJ2X246UyaYzFie+Z5++b0CD2wsc1U5VFfCG0
	 ixYOYfTCYzGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F028C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167013005434.26550.2967082017370029204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4fdd4486a99bc5fd33249c5825d64115084e418c0ff64993a156cad962c680
Date: Sun, 04 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670130054
