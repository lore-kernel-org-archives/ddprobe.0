Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A191367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B4AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672062687;
	bh=HDeXzotlcEeQ8Xu90LM4KL+aNON8f1QvrtzAeJfi5PA=;
	h=To:Subject:From:Date:From;
	b=d0hNQcbL2txFjWpepD/kXnr8swbf+gRhR2P5cvCFGWpvr0Afn6/Lw7h7nRTwt7KAn
	 gxqcWsWs/WyLcCVK9uCYJ4M/Jhbq10+4VshVxdTkUBkBD+VnQTtGVFvxS2my+Y4iut
	 xjN4dl1+TDkG+UliuCjcNLuyFLpWXu/0ouBoCIq/eAkqGxXZzjujqtYClZVsq4Jh0D
	 7BIgcRWsbYzirxUAWkW6q2oRjBsbOSKv7PAvpFIrLdTMC4eXUL34C8eJlOSSSkFT8c
	 JM+2HBBwXA5kkJ+ec2PNlKkE6f2izTFo8KcV06jIMwtO10keFzViOxh3tnx1Qd8voU
	 IaoAVA7APaNbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D77C46467
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206268739.3883.15151513256535038331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1b001ea930dfac3f0e3089cbdc75a7d869e03e48ee959582929c9386d90f27
Date: Mon, 26 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672062687
