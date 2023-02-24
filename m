Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC7C17CE
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4098C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 06:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677219305;
	bh=cXni4bOTuM5VFRTfruyG80WK9bbdpFnGAmPSCxv8apY=;
	h=To:Subject:From:Date:From;
	b=GXzyucDqRaZUb3DQnbpVh5l1mqYAk4u2pGZPOzVAXD2GJTcLRLjb2dydDHAn+bp9Q
	 +TsADEqudp5zLdvKmH/kxYAza6/+NVeGCxKFw1XHnjjZRPCBeR53NxlDSDKrvBNIqf
	 n1XdSrShtbAl1JDUkbZEqQQVvEIPTCIJEPbZPlw3iSptKcainI6TSXLDJQ0mh2IvIS
	 /H9kpGhGdsUux3dDp3AvVhNr5wM2PKo/yfkFp0g2TFVDTiYheZO4Btaat4dqui4JnH
	 V/wt8wvgZH3di+nn+DwiUdAv2YlR+CJxMVaT1L4VKnN+dGdaDDayQ9nvYOr4QapIe4
	 8zHPQ38z7oIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52EDC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721930573.13159.2051666370158644276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06434f175220616a43320454239cc4908315b911090fb2065a88cb29113e2bd
Date: Fri, 24 Feb 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677219305
