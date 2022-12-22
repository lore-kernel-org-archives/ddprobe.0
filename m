Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141F72F25
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF391C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671710487;
	bh=UZt+ayAx/pB1rlqXyOV6C2tIaKRSXRgFQFX2GPR8gGc=;
	h=To:Subject:From:Date:From;
	b=kErdAyeH9IILovZSsRi/3AM8gb6msgrniLeVmqaiPNvWbL/ti/tzsWlAdRJME0lpd
	 BgDftYiZEcExkvGGKhfsmtRvHTJuHGhD8n1i8u+CZPewE7y268uulro2h4Ix+oaOt1
	 jrq3SWjwXnwCb4Qgps6IEO8July3iaPOU8JGcOo8W/OnWXRLnAAKZMKrtfom5zv6ab
	 qM2myyullqooBb0BX2BUom0B1Aay/gBV1BeqqCiwTf0RPoFuYrLVUPabUxnva5gtYe
	 Bp2xHNQ0gg65Kg/ZDAMpGWMF7FVRThJk7grnABS4Ld5jauDYHbZpYwyn8zQHz4QfcA
	 bhQqOlj84N8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E4EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171048757.2108.3177147784299866217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb7a1297f082e590f9acc454915cc8babed80e201644644cb8f0a93ef06a697
Date: Thu, 22 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671710487
