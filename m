Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4451E808
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0891C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677489365;
	bh=gLDHSumgoDM90gfgfmAcnflsqiA5JJ0cStRnikqcPOE=;
	h=To:Subject:From:Date:From;
	b=OFodwSwqvq0oWOHqgddV3/Hf6RcXyb1ErAEpSY225FsUKAOQM+zkmmTEUqyuYVugb
	 bf+D9gD4s9aaMGGM3RSGSnWxhtc2yT6F9OCn7FlJ+Gz+7HhvvzUcS+qqyV+GXZgKIf
	 /fZMxqrv+QzUwc2KS4xBh47pfWD2R6VvisuoCgb22P0JNOVnPmCizQNO1Avhlcw1Sk
	 2Yh19lkLuXP1+uESMBe9CViLrzSN0VlSiRrMYVi/ir4G5L+G05CQJpH3Q1Zlgxq98D
	 14j82TnE8tLuUuYaGv2TNjRxZJD3JYzd8xkfuPoAcbpJ7uFeaM/9xAx0n+l44ya9up
	 an9AMk3KswTAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE2DC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748936576.3859.13409939384716940326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3dece58a53fbe50eff2b34e38f37fb87baf896a915503591b97e51f4b775ad
Date: Mon, 27 Feb 2023 09:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677489365
