Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A23220FB
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F8AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695011108;
	bh=mFupAlvbw2n+2BOS3uW07hEniknBVDNzoD40w5WS7/w=;
	h=To:Subject:From:Date:From;
	b=hdK6ONlck/0DFPaB/JIR70BiJ8WoKokzsKEJy0Q29NK4o8iXB9zUJ0zTTFZumjYBx
	 RP5HTMlyibuJJKJoqTRyXhA+nNVrRdvqFyYuj60nuQnj6Ifob77XOxC+JXjnVhYknd
	 G/fSUwAE8JE2UPhCid5Qz74jh26f5YDzXYrZMM3xGWw03BJP0rv6SgE1VHvpLmUBTr
	 0iuvrR8uqZtVp8bkwabywwTIzPSgOZFZZejsJwM1n5hi1MFY22//V/7k8BiyltUGYj
	 ffs9gPup0zHl3TXx9WH7QGDkJKyMQ08aEO7F6Hg1RWOAXZ7kXgiLTB+nU0qk98AP7n
	 DDrWB7IagVIVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA697CD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169501110869.927.13484532224528209095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a7b519d98a1f2aa18f17843873e2cb4ec84a6e436c7607980368a8eec37dbf
Date: Mon, 18 Sep 2023 04:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695011108
