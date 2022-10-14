Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36A8137D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E198C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665744053;
	bh=HdPOwMOlRjWPjsj+SE1qIwNyLsclN2fXnYFI6NNUxtU=;
	h=To:Subject:From:Date:From;
	b=KseD3CbviWJL6YmcT5HrsldvHg84lJb9DHwlRjw2NNZIL8UYChDIVye5226GlwWXV
	 pJoYvUPe7n2qMIJmjRNBFPJE0H5cq2T4R6n8VPTkFy+cr/9XhCln2aZ+873+snxdhR
	 sAO/SW5XGKyGncO8e10Si29MiYsv1EAZc54lWAbrmYNgxyGYlWFZw3bFKTe3pmf7Xl
	 UGiuJ4JeLEMGLRH5W38zfNGHjRvsxTdeSTSzmjiTHDAyvHpZ87JMJoyFn55BWa7GND
	 oCyCDrgYOjh5ZfPyCkzp3Sfj/S0JNfv1As21nFo6uJcCM7UNqMJrYtoKetKsjV7lBm
	 SwGfd27o7dQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509A4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574405332.23960.8587854447438384558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e714cd6e86a9cd9135cbe35440cc28cf2ab6384151cb3820260cee8038df895d
Date: Fri, 14 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665744053
