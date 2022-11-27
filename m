Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB80C17D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766B7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669525854;
	bh=Q9DyQEAN98uP3y+5ekCEXrhTt/OQwAXsLxJnV38c5L8=;
	h=To:Subject:From:Date:From;
	b=giVUzQ0TeFabvU5+g2YLpsTFSvWFQ+INtopWcKHe+7Wag2VW724AH/55IK3UyzW0E
	 RldH4a0mNUoOakxMeJ7v7WmVoQf6zc1nx0ybwB6xNxcmwTrp/q6+5Q3jikWAXu9zkj
	 3j+0eB64Pvd29i6zp2981N632cpBPzysfyNJPxgWYzEsKbRr9TR07lrc28OpIsjJAy
	 lSpwzZwPEiMH2cPIC0pP7+HxEbJtQI+Tx+XEEHShFBgaTsJsdhD9QVAhNW79p0UeVU
	 +CmlOaaKvZMv3Koki9H5huvTN2OQASoAziN1J1RIwZJPb59WuL+BxnL2RI+2tgrQ0n
	 5oqWoZfNE4kBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590A9C352A1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952585435.8323.9283199149533203789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e91a6b7e42e8ca55795cdd4aa5dd8a731ecd77ebd285580834a0471da70174
Date: Sun, 27 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669525854
