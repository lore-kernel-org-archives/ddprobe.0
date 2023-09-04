Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8802102
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 11:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D955FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693825448;
	bh=NohKUB5H6dWxkRdvxytiW2847IiyoRNfNE5pShjnFWQ=;
	h=To:Subject:From:Date:From;
	b=cEB3aAQskZMwullsG8bSup7oZfvp1Zd0ME6YCNLAO3iZEy+zLomi5jQSxNIwexhqj
	 yiWcQ0LCEADLDsAAUEZG5u0bDVeWGsjMnetsJTc8WstCr8IlYvOcvdx7Wic1/ww43m
	 cBNUtRqrXwavigo/EE0mEiath6Vh8I+foIoy4/sRx3+Jn9xVGEaUS4/3YKa1kL/ZUa
	 ZUQYtFG19NeBnj7KM7LUdxKVzOt9wxprqrNLm/KPe4q5o5DPLiajO/HI/NCJJU3WnV
	 BUm8zQpDv+HVpBs3fI7BAg6dxvamhIiynEPLJvUP/jAtj7fx/WzTUaF/mgDJUjlmBA
	 +eZMslCLSA5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC7BC83F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 11:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169382544874.26846.8448034748326387774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48632c3f05238356f7d89f9a358c1b4cbb5313a1aa5a5f354e35eb737fb86b76
Date: Mon, 04 Sep 2023 11:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693825448
