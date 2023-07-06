Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4B47E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBA6C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688611628;
	bh=6OrTBCjiV18zNk/XO9yjsTeIka0cSBNXw+7aAZ8i/ow=;
	h=To:Subject:From:Date:From;
	b=dDaFunk/f7sn3w7C+T33MHwF61oZ9Eifu7o5MiFtLsKmmLmOwUptY5c5TiEt/DseH
	 wpzNzICuXShplraSSFqI6IPbYhjopYwY810540ch6Scb7KP0ZdKIozE8o3/zPIhIGw
	 AIXQfOUx8fU/oMZB59Nx9lp9NbTgfH6n5hHfHvt5ZSLmtSrjA3CLgeGPKAjg0raPJM
	 eCin0hVkQ7Uo3mRqZ3OQe/n8lcE03Y3/Y4bqmaK7UaaKf9xllHX4CBbSRky7+wtEE6
	 VR6aqvbcm1PBaP29tAs37YdEfN7EfMmuIwCTW191LkjniziAjRXQKMqEJPdGlRpDVC
	 dqjOxFguEdExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88AFEB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861162868.16387.5938078448393795517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39024f40f64c3dae3b3681ea0e87d410c143280f519698ccfc2cea58d3c39cb8
Date: Thu, 06 Jul 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688611628
