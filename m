Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCA036D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EBEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671945087;
	bh=SRIW+xcWXkcqkJz0R+FaNk3JYuoeE0MtHHR3fwpS344=;
	h=To:Subject:From:Date:From;
	b=iiOkjv/r8Pi64+Ezhi27uigUH+bszl8k7zg6FaeaDNXOPcKiizVyvfkQpCCMRdThi
	 A6HFf7DNsLWcug4XaxP3o1W4MPmEe+25GKIe1C76BuxMtnEtcv6sZS9+sEFKi6IvP6
	 KfE/fRH8HY5z4x7fYknmWaWa+OG6Cr1n0d03Q0OCVnB76gSLz9gvmd1a/lThR3PtlU
	 lie8D7JJSQ9QZRD6A/aF5tMysEwdeblADz/BEFPtDIfrm2F0xZ8Or5EzqY955bRrS0
	 Ig7TFwNHUkGjeUDS8HqwGsGJeXmcXYls8RPiVzdMgZnkODrd0Cn1kPtTHuHdTTq195
	 F+vAXF7QmlgYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69286C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194508739.3429.16305351496526337326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bf959cfc9bc1c0d23815e816cdc0f68ea361e18e875d6c53b6c25350bf7cf0
Date: Sun, 25 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671945087
