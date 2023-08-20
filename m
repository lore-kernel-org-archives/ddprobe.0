Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F76C63A
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49EAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692521048;
	bh=+ZSfyn1CpmwufuXhFJZ990f/G/MJlLzzRDxelditzy8=;
	h=To:Subject:From:Date:From;
	b=MxXMeYjlLt5wShZnSEYJjyCboPutQjToND1xywTw+Yt2wiVhK94Q5ZpNIg7pdfD1Z
	 OpzHHTVv3ebB6TSEy58nbujjO5N3Q8N9Z2EleOpeefQuT1VXIo7oKPAGOnXlKXOOUe
	 EPkPxgqXn5BCik+p4wPnJ0Vtb8zt+38GgAcDKzQywDGdbZiu2w5x9hogRKZOmHDX8E
	 lQbJja13zag6uHel6z2pyx+0GDE+MAV8aTisXaSSVaWXTv/td9hzo2ifHrdK0yaPt1
	 t2mf0pI12EiquwT7lJ7+20OScrGhyVmQXsONpO9X+F6cWIRBokK0D0I0R3lIWpRCqh
	 LXJQpv93Lbagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1371EE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169252104871.25388.4301863587039504155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211010e6300757b5494466e5187c3b02aa0d552eb84a2de77496000f626af726
Date: Sun, 20 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692521048
