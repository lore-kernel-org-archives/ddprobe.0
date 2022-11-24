Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F7B2F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71807C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669308054;
	bh=7oFmGkL/ybf3hW7An9//d9dvrweqBDyUxiUlm0tAlbQ=;
	h=To:Subject:From:Date:From;
	b=MRHZF2Tvz1V+dwM9Cw5uTsPefKb6Qsqjd1wl/jRp4l1QBtS48E25CFUjl+KeH55UH
	 WW2c67kVawX771g/NYvGzLYRp7QUGV9qvnJQTuuIfWyKen4C/bSL3nPwjT1Clzh9n0
	 GGURYHVyeSYtCPzlMCenN6C8+eClRBschG9JIZz+lX8ZE+V5RUVwUpMsAG8oeiBV5m
	 bwAfVqFbQ3J7+Vm4l+cspZ1eOK2Ipom5RknRDlwu64a+euoOJV/ZKP27+oQrUONgAj
	 o2uBr1jE2BWeGt9v1vYxFuj+njHNRHUOfNnG4cqHNJCkvZqDGBqV2ZxORXEIjGAVuO
	 8mT5Dt1LIHoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD54C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930805436.8412.9202879014369752150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34dec703ab72c77e4aa44d4c0234fade84b5591a0e451db2f0ef167bf4ded67
Date: Thu, 24 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669308054
