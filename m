Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD2D6111
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C449C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663683653;
	bh=Grg2iGvBzOoeEFuUj59PCnDjC/gjCLc4cv+v4P55UoI=;
	h=To:Subject:From:Date:From;
	b=k31EcpzLBgWeig/kmp7ffs2UOSFriM+OhhccbkELgggWpDDA/6scq2G/OufLtbfLZ
	 hXSzezTyT/oh76XrvOIqnpRiM45QWn9B3SSmGuQwJYS9QHN6RZ40E2d2LOVJDsJ8ue
	 7gMOgqYSWq8Qy7JHT/2LiYjnfrhqKJzjgVKrViRwzV/O2kpDrOTPKJoJjIcUYYF8g1
	 4CeO82V1X8LSlTP+UgNTAhTLe1IFFpNFQTXZ0bKfxlSy0UcgGlxyFXqnBqB0xecIJe
	 g0NMpurRUFVHniStPR7HOjavx3VmOpTaXO3WdRFP68T1zpcl5sT9CbTXfuxIMOYUyv
	 VnNV3bKoEWM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B9BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368365332.27073.16503615664879552487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4efea279e4f8635b088a2f0d8eead8d06e6d6e731bde3928a4e360d798b682
Date: Tue, 20 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663683653
