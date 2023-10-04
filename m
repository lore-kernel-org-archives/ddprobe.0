Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53F14009
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D655BC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696424768;
	bh=031qzl5srkc1WT1taWvBAtndysL+MNcLu9x+UEBP9MU=;
	h=To:Subject:From:Date:From;
	b=SJLDXKyCUdOtKduBCjKxieNT8tPcSwtEY6HZyJnMFPrKP34aQNFvAYzjx6PSdQRe8
	 morW7bmWJ5uYkW9gCKPGIjAmPRsW5DKWDSdiTdcDK4uyvVBNikSCMgeUXhky6rfL+W
	 DqujMGllhf0F1Z0fSAY/A4i35jWkuEPYXcjJctRWIC3f0mF0yJwMdArZcO4ONVdhzK
	 g3/dACL8uCvhSNSXNh6fp/gPqi7rOT4wpx65yJmGE1Xj2/iuyfw9IiYqJDIllWew7J
	 xZMjmbZqcyXgojZPWTaLLduxnPd3OCPn/8p5q30A710c2gIlbBAKF/W/Paa6O6FqwO
	 2KzKZpzdSNWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B756EE7B610
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642476872.14293.3649423596149463667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ec15239fac82aa95d87cbfa96ce8c7eb0125fb1a0dd66ab45584bd512c7f69
Date: Wed, 04 Oct 2023 13:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696424768
