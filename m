Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673B824505
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE499C433C9
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691608388;
	bh=NMrweSUM8mx81W4Duy/MVGU+7WVF0q37rIDqwE8Ljm4=;
	h=To:Subject:From:Date:From;
	b=jQdtdFpsm2N+08prWi9TYcppnbXjx5AhCoXd2/I8WUeyL0ifab317eQDQLJ6wmux9
	 W5MNlW2MVYRkloG8XZcD8ey5Lquzq34Ud6sUhDZwrFNhiQsTheVktsjIKtUnxOi0Lv
	 xwZkaDR0wqs5UmWO7CXA4lmKRoocgemJBxElXJUXL7AlSVnxIwLF4knPI2GF/sIBln
	 KPDf2Z6iI4GtmBu6atioJjYoMCAd97/zOQhtESj60A56xWJGJ+xJ5Mg9oU5B2CXZGR
	 ytr8P9leys7XaXQ3hoD4z5+7kGQG3sHJuWS6Vx8MqZRgJ17Hd5VRs5s2xeCwJea/H6
	 fllq5CrWrLhdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD30FC001E0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169160838870.22667.455159550435592058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889fc2a1eec6c42608f5f13885ca6a0df83b1bcda9b99042d130797df80ef356
Date: Wed, 09 Aug 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691608388
