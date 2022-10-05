Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3544683
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FDDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664928053;
	bh=GwtLgz18hzqSKvEvmOZPCeNqZwW7mDKVFhIErlmpp6M=;
	h=To:Subject:From:Date:From;
	b=npV6VK7a5751lk5fJJqHLXa5cHgNZxd2tntX5cq/Wi5cFNUUH9e+nkabMottQats5
	 UtAE9O7SmPz9BfieE7J4NkifKlBpBtm2ALDN4AIL3QZCzahllS96RSwHYckGZgfXM9
	 Tqv59yKqQFgxpGXpZCgOZNsvD3u/4h0TLP5TxgelLPIVMF+MASg4k8I7qiUwyzaJjd
	 KA3D5rU9Aw2sQTf8Thd7jeovw0W8mwAH+5Q9JWrSIz8bt9CJayJ5d5Q5lohanFGDlw
	 qWQqVoES0LNgAU5mNEQMt7UA+ZIwxyUjZUNzUSPuwYnzpP42CO8wUsyGcV3NnuzuAO
	 1oAWiZhG9f3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5653AC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492805333.4185.11144457186105255490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6d83b9564f0cf715ec4f76c6354729f8e383dc137fd7851637181c1c47a2d3
Date: Wed, 05 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664928053
