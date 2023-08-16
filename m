Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C93101C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0A3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692185588;
	bh=R/Lot3lidJnuzOmGfBbl4NL08RdRftD0awBSelGpnUc=;
	h=To:Subject:From:Date:From;
	b=kbDOvm1L0h79XN5rWlPiBhKeCVtLCnz0VWRittzrf/HiD4kZ71LTJ6w3em3tiIXoC
	 h15ZFHZvCIxRpd5Tf3TF4DsKIkO4tVetF7CAH/oot+Z3m3p8dW9VYwWnrh+J7CdmCB
	 m9x5XM+nROxdZT8d9g1K6as1g2whUz9QTo8TmV6qVYjxR5QH9FETujp37GEa4mRL7U
	 3bJAdrzT3afmChfdDS1hQj5xNLe5H3QMYr3Tx5uqLVBIhk+mO9l/pzNI3DpayoZh9t
	 lisl25+kXHKELb0P8Xh/nxKis85wEWcxanxMfTYgRMuyp8JRH3I5m5X106MA305Wcs
	 3i2IflrOh/O7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A689CC001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169218558867.10280.10823056142879744070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfd31d10fcabf9a2bb49328b59ca27ca26d15721fdb7e9d424a315f6c73cff3
Date: Wed, 16 Aug 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692185588
