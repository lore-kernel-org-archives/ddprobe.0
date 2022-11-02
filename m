Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E9224F47
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87565C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667416254;
	bh=9xvxzdBDmA9U+h+I98jlIdqLzrzHFucFLK6wKUY65nI=;
	h=To:Subject:From:Date:From;
	b=hHxt7jeA9sFaiV6NJjEDAF1v/feWKgJdJWUynFYl43NFSSSDAH/j791q057nh2LaQ
	 iluCCfD6fVRz5g4ORijQr/VjW382B7HZWLdGxCIZXXV3Y5cRSPISwVdPnVpDd5DDbV
	 44aMJO1za5yeV1jlw4GaRiQbEqQ6nteC25uoIgvY7uPwpy2/LNrnzPcnwwJu9Z7Fkb
	 v2WRjVClMaPoTJB7eyXMk0PhTHA2guc/P+XzqmSXJa/0zC05QZOK7Za/Mei63q1tm8
	 929RRQ+dfG60n1rg6Q5p8r1zvoPhX35N5DK+683KCUietwBF3XV2zh69T6q2+F/4fa
	 u7kCKTDFbkyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B24C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741625439.1195.13165314316747685133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a850bcdec33ad74fbdb9039ca66fe6e8c09ed5ca8aa4b765be5cb893cd0a8e7
Date: Wed, 02 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667416254
