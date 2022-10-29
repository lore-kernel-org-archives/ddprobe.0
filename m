Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC31A15B2
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C571C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667019054;
	bh=ieVLey6gQ4K91eJ0p5ihzkA1033k8d7f6mwLtsILUAA=;
	h=To:Subject:From:Date:From;
	b=INfoN2AnwjZx/eHWYJZrPN0777K9+lleos8ZI1Rr07SAsD7eNjCnHAOppmuYylmEX
	 6rfrvEbP+KDNRAQoyCKH8yUaFaDUgQndSlLnmtaZTWSq+v0mjS+jvdWKYdQyRXtPHv
	 7ltiwQxT98c6y0UBrONWczRWxTAdn/qmGHxkODYXfeoJ5R+9UCAuqzSbs/hZ66zuWf
	 o6FdSTUwsKBuv2ixbrgI4k/ypUGsMJIdYgbbqbpmm4k8gMjSOyroGF5pOg2mEKrm56
	 JviBKIFin0AHC0Qy54eWI+JxRZvhnUgfjl4EA+UVj6mO09OAew5SikOLuD5yyWa8Se
	 3ywRBaidW6udw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5583FC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701905434.2817.17659250833749562314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122799bcfe5d3b6e0ae20c94c7bd44d61f1807c9e162eaf6af7790c0f77186f5
Date: Sat, 29 Oct 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667019054
