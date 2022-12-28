Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23C5806
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B7EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672216287;
	bh=s0o0kK0d2f05BD5qXGz1vQ50szaWluKjmjMZUBrql00=;
	h=To:Subject:From:Date:From;
	b=NDeenqf9u+VaEo62zweaEVs18PzVFp0BSFUn9O5KY4BO9nW7N2oAtof39kyQsWsZu
	 AIiHmMqZ1y/d9uIbIv+B/1NoqP4uIoJnKonQWj+xY4megjxRvyp+4GbQsXk38eNoc5
	 JE3LoGzu2bMxAWzG/u7x0y973HcHENnF0YQy247K2Gt+31sYma/0ZSq4V5/GoEBR0M
	 f6qOcJcqG2ovWpdQZMuSDIJ1FzFSo30XslzKe4tqHZXUMbLtEm6YTpH6dq+Uyn87JE
	 MbDxLR7ii/JQLj4VyNh9+JEgN9q9dIkvpLfwLXoQEzdsFXXiWFRUl1fYVb7jbPBt9D
	 ZiYVxrUWgJkxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64845C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221628740.5198.8146484444266743405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0228223993865bff916fbc4dd60e9f45c92d9e65bd2848c4da20fc8db14188bf
Date: Wed, 28 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672216287
