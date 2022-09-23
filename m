Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6F13C05
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:20:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785A1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663935655;
	bh=C00aR2nANULHHsPDM1crb3sXcCSquG+SYQ3gzXv8S5Y=;
	h=To:Subject:From:Date:From;
	b=MQwEAw1qGzBHyYuFdHfUTOQjLKEm1nN7maRmtO3NecN2yHPnHFIV/hCGhjUm9gkK1
	 e7J88Qxtv+ZQx1PwXz2ndzIk/ke08MUIrv+BiYUHz9salOdIbwxj+t4JsPfTxrHMdi
	 DZTWZNgmILAaJaUXJuDetZSKcgtEUihZUdw+rYhn+9NvCLUqEl3zV+917eROkfe/2r
	 308Z7J1AoFOnJy7sGiFltSJuf/X7hbeIDDca1/UyEe/dVo4L1Opl9H449PE78/csz/
	 9HUewvTTLB9thB/p18VZwLHhvvvfXKBwQICWcIRuqaZxwZ1EWbflBYTxAvs6z6TZsW
	 M9aghjZQ/LuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B8EC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393565335.30166.4486815508950352913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fdd17a67554c5b7d8349df97d92ea2c91f005de97df085864f7afd7a0fe3cc
Date: Fri, 23 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663935653
