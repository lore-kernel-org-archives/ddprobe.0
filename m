Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55A77F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84774C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662883853;
	bh=9nr0JbbzA3gKAcezHnwnsM/28HlWj+eLXF1hGJOC6k0=;
	h=To:Subject:From:Date:From;
	b=r/an0MEK5h+P9JOQZbzYuzQxSkkRq+LQvz0Jmq+Kgef0UiAeRm4EDBnjgM/aZDV+q
	 MoZGvf1x2ib+tUxEEBFIpHfFmOJyRU6QaMynNmAT4uhKww6m8tp09KdVSgGXJO44x0
	 wOZjZF5a4B8wOJPjMJ4tejYy/yhrCPnMTc2VkVF9s8udcfoihY4OO1cBGTTprIDaHA
	 OCM/5u34tb3rtnK3ZiWM1kP5MVPKYlL7NT6UiLNHuXIUoLO6AoNIO9dpD2xng5T636
	 7IJ4FJYh1vuPkn1XjHSwmiH0+86zgwCwUyVMNhW4CMh3w/fhJ4oxfYvvQwSZbsSgVz
	 JF90Zh5Gclifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A9FC6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288385337.15481.7198656837467031773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6f28850f4832587709c4c1c47fcf531391c8fe724548797f498ef71ca8a0cd
Date: Sun, 11 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662883853
