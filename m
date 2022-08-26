Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA8C28E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919B2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661507452;
	bh=haMTMN1Xy8WsrLcVBF+vpyFYGyVyDw3OaDeIFSKt3jc=;
	h=To:Subject:From:Date:From;
	b=KY4IrLs5m5bMv1R8syN2xNpyiwD4366BfSe3X0anauJsQiWFf9uQ7fi5F+/hdgDVP
	 H9Lb38eq+t7nLz0tO712XIHBU7BVcTBE7uGcy77XiFW46l76Yd6ToMAf4neTlzNKZP
	 iJXPoiuiA+8jCgjYCSAKpVUIug5+2AUPHGt+grDsBzdAa0SS50PpNFD+a5XUTPAoDz
	 nIX7qQnqdvZ+JohMc+lTLld55/ofQGZt1zcMDPBKuGbyHwaWnm4klwi5wm0FHolxn2
	 YRDmfwKv7qfVtV0mi/XQzqAy3ov13937zpiFSvEtAA4By0AYPMCMj7R9yJPPL3s+Hw
	 VhZ373IMN51AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E59ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150745246.12607.12820433057034349535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a78b95a9684036cafca023728b9b080909a5cbbe5a63eea6d44f72652a1fb0c
Date: Fri, 26 Aug 2022 09:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661507452
