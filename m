Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3E3C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCB2C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673221887;
	bh=QJS65WmWdnrTPVOimAxYOpteegF9WzPYWOWx2s8MwOU=;
	h=To:Subject:From:Date:From;
	b=sfbKhrpu3b3VkPXrCdXVyCf/WtAP+V+z1wXzZVzbxVZVI06+DRioFt1A7SdgqTxjx
	 vkBLbq3Zy+n6AKruhXVd2rII7xG4nWNK7d/esUQl2lWiXYrwgE/ca2uep51V0wqhz+
	 gM0JT8L7cTba2MQDEIXFauXjNGeePkNHG64eK1ZRrYRMSLZBreNR5XaPT8ugPLONUv
	 VJYwXyZvNhGCpNGEql/5CAc7pSijNKm/Mrq+r3rpBe883FbuyOFpdXUbcwrx6oEr9t
	 IpXsbFoqIx6r5J0U/P3KvpHdh5gl/eMDuTBz5m2qLQa0DcyNvXgoUqezB5LC8X5OKH
	 TlyF4Gk1OcR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6236CC54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322188739.6731.16326754733086143734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aa058f9cf9074e260d1f05140ca0268b9299d803c095981a70147ab5c9559e
Date: Sun, 08 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673221887
