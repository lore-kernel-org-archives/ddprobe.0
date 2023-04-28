Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49815847B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B24C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682706305;
	bh=u5Lc4VvcYumnIXOIGzOpoY14v23JX0ARvEec44FzTJs=;
	h=To:Subject:From:Date:From;
	b=dFzI12FgxfVniFLXDH4ZZSTLCShmJ+B2rzc4HhYA2tk1WwJ5BPNQQOdOi8/K9ip3k
	 7LXHgM7G/XuP8ozU2lxM6bcyKj1q6k7IfBRQ0q1nIHwkpbLBwVAnUeh2QnGDuFIW3i
	 wSRyuyofse549LzryBafsLkgysKjrzNWdba1rwrQdDbwExUPJ3PlMnhDrTecpGrySB
	 Q+3bdxgaD2ILb/ZOQe487pYjVzMLGLJ06NDJm/S+51tAVGiuZYz/kuj5JG/w3CdSd3
	 Bb3PBu/iOpDK55yDKNoG/+wkUCjvNMQsRsOoWj51OYewdtO8usXNuUJib2lnFq5rtq
	 LDBFM5jtY26NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB6BC77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270630576.6789.6326194051063634405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdffed0122d9568b687ccbb0ba2285b9d642ba102b19f534f1d1a0ca7de7ebc2
Date: Fri, 28 Apr 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682706305
