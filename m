Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5779F19BD5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84DEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690832528;
	bh=i+/HufYyY/660cHRip6ZAM8VPiYEWSUnDLvKPZ+YFR4=;
	h=To:Subject:From:Date:From;
	b=VItaplNAu6PsYwNTXcAT8j6lhW9Gj+Il0wLHTg7yLFXt89ewpFVO8ZrVM5bOxKo2E
	 jHJ24Z+Qk8AHqxCzye6BB2vxbFFaoaif8SNi2h1eaGCqFgymAtH5u8ug4dcVigQVxf
	 bOTRPGO6bzcZO+DvQ0BsYSbAlepyl8/gg8s93qu1BaQDynupClIR0nXMjQNueaySLX
	 FMGdVqY60DRhi3AYvTzocQqJaN4fD1rpVnjZSxyJSBfbxRnkLOREnqbtEZqgOQXzOX
	 mh2h8g8OHZPWSWRYNbqiAfe9pNiGcwEP+n+11hNt1TXMgHO+t2njgs+qjWzw8stwQX
	 vBkKeTMSl7dBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7AC001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169083252868.18043.10769156350785258570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4264653c876532cb1ccf6c5fdb0097ab461a58498b71aa120f1b22c257b6b212
Date: Mon, 31 Jul 2023 19:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690832528
