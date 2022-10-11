Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF38D2F3D
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F0FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665489653;
	bh=HOPuRJTHRVNizVMvuWmkrg34ZMIYPaL3F3EY+mNw4Yo=;
	h=To:Subject:From:Date:From;
	b=IhkSC7TM2HfU015uJjtda/ZDLnil4vZeQXV+jbW/QXf+fBKLXpC25Q2V0BHONPFYJ
	 74cJTIgl3UnqW3iTNCgmodegl+Cs4R7yFH3aIxFBnQQBGuPnZQNbOYxaVYpCwPZsh/
	 6dgxOkMEiYNgV5oPbP+e/cdoynsJeO3H7due/tul3rjTSx/p6tNjg5gakAl2pjp6Xz
	 26n5joO4YugYKSyCxv95WcZujTFwuuBJaHoviSfHP0J+bJciJMWfBHcUOoufJhSzgb
	 eBDfRsjCPnV7u6G/3SI8rhRx06L42XRXGV8B5CpWoM03wKOl4hHpKCH/HK4V2cYpgd
	 hdC5PVob6xfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556F0C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548965334.11706.8315472296112092333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a466369d3628664d8d49f9b5e348b39d872b0e274b71a334a2b3750646092e
Date: Tue, 11 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665489653
