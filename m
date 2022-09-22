Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73E866E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70870C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663861253;
	bh=7bqBlcTNgz+EhjRR44uCmJUnyQZLBkgrWAJwygu4aO8=;
	h=To:Subject:From:Date:From;
	b=TT7MLIJj+XsLpd8xMCROEdhy7YPPAltDoSqej3y+h0cAHQW+styqmMfG6Geb77uL/
	 oojW884HdJ0b1810+BLgDxeGXmEVcFk1O8ipWBq4DcZ8Hbn/xPxRtBZ2pNsXCKddr2
	 QQCk4Ocj/qjEQCTppPCKnhs1Xilx60D0Vk1vd6HsILA7x5y6Y1m0EKKmMaVduOg4+c
	 IECke7dJ44eLlu8UgT0VLpVW584C2RmC3/oNhQIr8xBcX8rn1aKeu/xJPnsmzBsY8S
	 7fgAuBEofR/WQ2WvVx5UAXUM3a0++Vds3avVRZLc6XUGu7I78S5H/wlLBrECArSJ1f
	 p3uEATeH+X4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593D6C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386125335.5711.7531620012349848845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c150fe8f7052090bb8a9141d91313fefbf3c8defd890cf0aea90f3d677228890
Date: Thu, 22 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663861253
