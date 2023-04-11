Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAD12F29
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B3FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681212725;
	bh=hiFdktKafY0zZ3sTkwF12sCUtooWMbdizohqMmiMrPI=;
	h=To:Subject:From:Date:From;
	b=WuCO+KHWYYOfa5cv8mHQYkgR7tYGAowkjhkrLwUzYMrvmkqvtUwPfDJjPI8KQ/ai7
	 +iUFeiKIe4+m5sqbppgYcrZv5e13FQf3o8IWL+9I02dl01LYoWZXauH3uR9hoLg+Rz
	 6KKfa/sVCv1xZzuLr0Y8PhOogKwGWTzOAhpT+6ivHG0zVUCJ8FVvUcP9Kvc/tqvILy
	 vMAVX1wKawvMu+psBkscvPl5TxCwvuJqf/M+/KyzPzYNH0I4yPnEOc7fggXEgavLrZ
	 CtRukDVszWCYdGkS58ackjqP6RAUayI/dsB2r1bYu6pHdkJ3S0nfqohdxE8CLji7AW
	 TxY2yUfGkU+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFBDC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121272576.775.1196597819548330504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c35bc5dd40426d9855ee357c7d081c45da283096da8b223aed21335f88d030e
Date: Tue, 11 Apr 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681212725
