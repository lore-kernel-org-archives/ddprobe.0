Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079B2256A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80ED4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686403806;
	bh=ZhuhK0Ax1+ScijCd+rzOqz7S61NX1NgsK9LN618OyZ8=;
	h=To:Subject:From:Date:From;
	b=q9kBNNZgbA0BjY7DmoAv7E2C2pcaQNF1qLO/tDYQugIxCNDs7YQkoYgj7TjNp2jRr
	 8d7CJp6T6b8DowKBnCjQ/gT90S32oTaAygKUpDzS++9D0MNB+WNpLu90/XSv3O7u62
	 CCElsVWPmzUSliYoI2UQu7n3/ZdoHTlnSmCZCiJP4agiDRSo2T+uzmOWUl8kQiJqcA
	 B2bHvqar/bFCljbi7v2w3VisH+WhNGu6LK/96lbPO0/EV6RgOX8qkkkU5M+fkw99wK
	 Iy5+jNs02bChn6osiUMIT18Bu1ml+U6XgtA0UQzI5q/gBsgFyv1OmclDtaX8GhKZSj
	 vhSQS2PCZEfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C637C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:30:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640380602.3119.14316676104870569438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dda8920c49c9b19c6ec393f1a0ad4a4bb00f698442525abdf5ebfa0236e7d2
Date: Sat, 10 Jun 2023 13:30:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686403806
