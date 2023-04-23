Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB433EA
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9579C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682273465;
	bh=bZAPOEmup8TfVIVI/wr289oKh8pfnezYIPmeJIuLC7U=;
	h=To:Subject:From:Date:From;
	b=RpDzd1zZBPJ1q+uaKAtwQNIUvUmO0QpaRhV2Fr9yN3UGJabZw6SQQgTANpbyg4usl
	 KPC3klnub2SyTvOQCjkLhWhy+7bl1MX3tpVLpxyLfz/CxsstFtIzGlUbKF8MW4Z4eL
	 1F7GHYOlZ4W9kU0mK1uSRq+DZLFvukxu2H3C0gDdQAZbZ/ZuF2YqLoxWuFxnQF8LG9
	 FuEUIOeZw7TQnbYUJw4al+8xzyvAuT9MpphVZmoNW5ZQq77YwksJz0PtJDibbK2wlM
	 /gtHeIkhixWEZS1ATQ9hP41DxUHrCPMpIH1S8rWCp97Ugv9nw851RYVG3nv4GnjTMK
	 kQyx+ND22EFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C861EC6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227346577.29529.15410084591708860204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a44c7520c4972a22ed854cab3330251af495e677e2a376df8b34197127a81b
Date: Sun, 23 Apr 2023 18:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682273465
