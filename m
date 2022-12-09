Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3F33214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7BEC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670622087;
	bh=NsdqAOR7EALE4uigrRrfxLaKur9EfUcAVLpemICQc60=;
	h=To:Subject:From:Date:From;
	b=CEItU/KyTIej8RxQxzOIJfH6WuIzKpQY0A91U43Hw4j4R/sn1EQmpUkRqj+YgVFnI
	 ciEvRdfX/v2BCzaQGkvuu3+S7LYIyO2mTpMrA5LAVvRCd/snYvr8jYEaqOoUcfBSts
	 8BL2GJuKCyak3JVKX0zhf6/whU/6jo22BGw1RijQj/ekOWoUhKxO2tWUkl9I1XROfd
	 Wr/Z0K6O5GQWse+RtHK6pUBuk8F847siQvZYDAMywVlMRYiFnRydAdZQGHlr2kbAyh
	 jHAemfz7GK4w3QF0tnR5i12jsP/JEmTsvXfD26ymStrvPfiNWAR22DGRBoFiymdbKE
	 J6V3VGp2j9LMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64201C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062208740.31219.35877545938716801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774fdaa7c01772ea51aad8d164403ab14026d6f64878986de386192c0b1a2c11
Date: Fri, 09 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670622087
