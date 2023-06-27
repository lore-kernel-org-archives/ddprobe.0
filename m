Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C34B36B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E907EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687833188;
	bh=MYDGG0XcE13bynw6ihII6wE1N6gDn8mJpoalq8j9x5A=;
	h=To:Subject:From:Date:From;
	b=pCyVHnuuTFlYqMF38FoyQO/7L8ONJsZGnGVLWlvm+9b/Dgm4z6cPyK5zyMnOOjv8I
	 L4lmHJ+46dEarZslqDywd2zFS+SYGuzX7L8cG0WLVraj3cxJ7Q6qhFYH0eYPuUj3lx
	 lvZhN5Zmvpi3CJ2JZ/zblwaGfgRKVrU6m9ewEdF1uuVTexB+5pPD1Sot+CKJBdgB7V
	 yY0xon6VJ8kuFAht8swHbTIzLRDKovd/PqnMawvGzjmTtd6ULIcOIeb+/RPdNA5dQu
	 +d1NpaBCz6NUmfvt0c3OG/B275yvny9//8m9CpZcgsRbN/s4qYWGM9B8QFTitdUbkh
	 6YMGjz9L6CTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E1EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783318870.32599.11727051979099466773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c7f14277101d96c723772306e8b255c8095f5d7b5b09d077375ad88f682431
Date: Tue, 27 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687833188
