Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ADAA94A
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 17:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E789FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693850048;
	bh=J5GxeDDZ96f2COQL6KjSoYZpWSiUd686n88dtJmhxOg=;
	h=To:Subject:From:Date:From;
	b=SxgBNJKBoju864o8Q+gx4IlT7GA3B26KPxzJ/NgUhGYZXCbAWD9Gv7SGgtiwUjoQR
	 lSOXv00f8PSwliEGNa+BKwBBrFGtHPG3cnl26EXZjTOkZV+gnsDqLQMMjAsG9wkOIL
	 2/QX5vIWxy+Joy/FdyeqXlMKS8DdswSCr7CfXU6t0PpeOqHiHo+x2x2m94ifOexxt4
	 8iwDfn8SQe+GwtnwD8BUYefHrftm2MTcVbpTGIfiYaLz3lizKSD8Me/ib7MxmQa5+D
	 9Ne2oiMn5mpgl1JTszZiVp5t/Ezh39L/LruEUDstFSW4XEjBLgXVmy2FsTJicZUBwF
	 bDSlL9QAnRjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78D7C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169385004879.26587.10076005579597583800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3d068cf48861673d5d3ae74fff8956adcd4f9dcd93c2acdec50f9e2a68fbec
Date: Mon, 04 Sep 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693850048
