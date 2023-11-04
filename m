Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E6BC2C2
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlfjIz4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F51CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699091896;
	bh=dEO2GMtfhc1MHmuoJB4xPl7GcG6B4S0WRhUZNXi4jks=;
	h=To:Subject:From:Date:From;
	b=SlfjIz4A/Zh4pBfUJfrOurQR3mUIZFVF2GEyZ0ci05N8A4cK29TloFsvB4sv3iCov
	 SPFL3bz5cW5+fDeN4T6QUWE+56Rtg8ah4TGq96yl9Fwmzl2ig0axwpxlp3N6jtJgqW
	 SP68G8w2c2I0dmets2OpsY1hBFQYSkycBNURRNEV0WdpCE31M8Bs971/NcWASSQcoz
	 MbH1PDFk8vjeS3XH35MTfhO/iuRFupcxAK0AokwBPuOK38FyjsohsZFokruAktWPer
	 Eu0kUfhDVS3S4gxAmzSvYQlwnBNVe/uq2Pe4ySyjx4bRBHyzLS2uDefe81pihqgjCb
	 Vp3eBwTAmL4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6247EC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169909189639.16913.3353984221869872035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376bf441fa8101ac3778b97d0e2cbf3892b0866a8586150d797d3dac74c159cf
Date: Sat, 04 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699091896
