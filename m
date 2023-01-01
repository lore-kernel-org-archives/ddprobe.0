Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D936E7484
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853F2C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672611087;
	bh=RsG8qVWVNUyP69tHVuy0TjzauB/ScOPtqRLwdz86gLw=;
	h=To:Subject:From:Date:From;
	b=ung5UZockgfgpMr+ZViE5ekNKjVtmilPbgq2UtoKUQuDWYw3fLuOZJTIjoMc3Td1n
	 AqHTqKK2L32id5BvoPKhpOWHBBoTmUF2a6UgRIrUIx3Pd8aHi5/blFwHQM08lwjv5f
	 Emy1MryhIMWJbMOhX2zdFe0AgvoXzKTIRO14sQrwLOcirUrFBODG8cWuz+Isf0FaAe
	 mr41HHyXqEdRRxvf18z3Sd26j/dkqSoZ78QuhwmZ7elwe5sEEn3Ebb917wawjkqont
	 AXLZsxC1OJK1DOga8ZPatLaKwZGLAEcALhOpCEnf6vcKKreFqU0SLBLrKrXmGS5mq0
	 XRCI9sNnJmiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCFFC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261108742.15811.733847285170446390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c05f3a2887759f198e7feca8cba56641607bd4cd09cb043ef3031789368395
Date: Sun, 01 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672611087
