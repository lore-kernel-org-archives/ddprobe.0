Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62252A93C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3567C4339C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686311766;
	bh=eXcyZTsByXmZ0BboWah5L9gS775154rwqxyirm+gFfU=;
	h=To:Subject:From:Date:From;
	b=AvBncyS8sDyl0qkEfTzuyxZ+RNUBc8/pdL1cMejdUOuUCtBG9IZfKiAUbqQredgsj
	 c6AFOLOgqehvyuOUBcFR2NwJz7B1sn25fpEFwGzEsUGeyaEyNabdAYJ19MxEf0eR1L
	 TVYGAneqWDjGt4HVol1jCygF14CcVTAQrzyQbQQyv/5KF7pDJI0N+Lvq2gZpp59BfG
	 pFQnlupbv7PZOiU0wQWTuZRZJsxgaB3vLPUQQqi/h33Is7halXXLhTun6f2vHrQL15
	 7SKU2s6xXWUyphbLIjqGPPZZ2QphatveykVeKpClYEUcuc4Sbz0khLssZuqtxFR8Jm
	 9gQDbbmD1HSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D3AC7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631176583.22154.2093951030029201982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48830a8eea92ac0fc183e616af92573ef023be9853d5d8518fdd8b3415459868
Date: Fri, 09 Jun 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686311765
