Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B824633D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9A3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667762454;
	bh=Jvt0/rCjHKI0kYWHU3Opxk1TpnXaB1FkwtpKBtfg234=;
	h=To:Subject:From:Date:From;
	b=Qsp2UxyalKdXoy9e+XR196VGppZyNfk0OXu1CUmZ+u4yLscbADZ5D3r1W55LrrOWn
	 KDoIsuBcUQofjgB9GZ32HoYkwsiJ85xEgzr13YRMr5xhN1ttPQG9WDv/Grr459RmYH
	 Mtnsgv7RAXFfKcX9fF8PXpuzPvrPDgkUgv5V+BO9oteufs/LLs4KeRraS41jvVzQxv
	 G3VokdsHeQ3oWLQ8NWzL3HAzt8lsLerRgs7HhVYb395W6I6xuXwvzFipWSpNbrsaSl
	 JknOLX/+7bT/Uz3PE5ccc3kYpoEj0TXEO+vPGR/48C30qLMMiSRG7s4KNN5iKZiU6B
	 /k2d7Xa5asu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C48C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776245434.19548.396616819412418534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db68829570e218d2e21ecef32fa73ba3311ea37bf808a6ef3224902759dfdc2
Date: Sun, 06 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667762454
