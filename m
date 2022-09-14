Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC60A3D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B67AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663165253;
	bh=QX5r78THs7tMOZyeM/Z5v5LIzEqftRCS0wtz0S818Mg=;
	h=To:Subject:From:Date:From;
	b=Nfxd4UcY2cGEG+OaUtGXKwQdf6uq5u5XYk58/Go0RIm+KNT/fkF62PDUbqoZHuPVC
	 wYtUQDIsYQ2T33Nb26C8+Wy4i/VAt3lR1rOrCTDKxn9NEUZHKe+5/Z5mnMuAPCjdcb
	 6L4VGFwMnGObeN9gZV5SIU1QTQ+yp9FG6es5mqXqKI64e+EJFRkM1rhzbHwII8nF73
	 GU8+Gf5Jb4CCpuiSnYp4AXDTV254DSOQgwR80XL/12kjyn2si/npqpR4SDb0r8gtft
	 S2NIGPAnUMGn54Tr6MGdSZMNRhVWTi4JBkvWL2so7hb14SR6W/7yOv2Nm5ftrhtyjb
	 8rHWEPsIHoCiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5208CC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316525332.20593.9025584436020479567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04156343618bb8e9464c6e2cfb8be73c718102df8ee91b494bad5516ccc20b70
Date: Wed, 14 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663165253
