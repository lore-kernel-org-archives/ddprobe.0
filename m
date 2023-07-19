Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ED9125AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 13:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC94DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 13:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689772268;
	bh=LDUJVZm4of+WrO94KlwohWcoawKymoOvswonuSaBGBk=;
	h=To:Subject:From:Date:From;
	b=YP9bC+r+wR+5Fzh4m4PxxzQLXF+/R246yrYqpEn993QGfD2hsbrWLwnQr+wmKW0gT
	 R2smzMDwvc9Z4KnxoUmD1BExr3JxztzN80UT3wCOkeT7C6QFvHxkns5Y5r6MC09Qxm
	 cUS6Z+wjwNYMekkww7Kcy3r6iwmbXT9ZkuFWwsM/59KU7Jjrvki8D97pVL9umoq8ji
	 vTbZoK1bKkS4ndE4K0ut6T3xd+FaVczEz234x9zC10F4yCnwqgGzveXw92krhKit5F
	 ny3MkS9cylbWk8dZ1o2tM1ZRC6JwsaXokyPWSnXObbEfYNNMSf9WIj85FJf7MVuXDT
	 XDkT+9ZmE7eiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01F5EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 13:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168977226871.31460.5515608276995008537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f29462a8fd9a4781e671c9411a8f6a7509ca2bb146ccdbf200e7d10054fef9
Date: Wed, 19 Jul 2023 13:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689772268
