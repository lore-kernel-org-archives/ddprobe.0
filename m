Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AA74C80
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCB9C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665171053;
	bh=SzmF/mnEqJMcSw3VxfIf1zUTwYqtu9cxd75md3Qn0CA=;
	h=To:Subject:From:Date:From;
	b=L90+JKWJeT52QUn0B9ANLow/KOKRaAfRw9AqVWfkCkN0n9Z0EpDmajnHKvHrizx4O
	 NwvJNE68B2qnQW4+Vjwg/nq+mPK9oeU4tRoNTzDzY+/POIN0Sc5HcUk+97QkmFG7N0
	 Ax/VU0JiQw48BJ8rhyoZir69vajcc6R6COJOaNCwwAD4IMVl5TDwpOKtXSYFGnHNP7
	 37ZxvzJuK1Lkwn9f6Opdg++u57eU7Ih00EhZc69wVLay9ysgg69F0t1b9ZvzexqzvU
	 TSvSOPD33BrldPlAFmlLDTfo6Sd4SCiOlw1p9Anv61a5fSTUSZaddWnUdxnqaduhkW
	 2S3alkAn+9LkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F03DC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517105331.12197.6902854156949988137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f6a46946aba8ca6bda17ebb596ba7e21dc55d16d1605a985c1f17df88679f4
Date: Fri, 07 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665171053
