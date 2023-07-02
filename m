Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE383D9E
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A59C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688328308;
	bh=GiFuJhF+D9864g8o+LVSUtRyEJ815HmW2GDFj852X10=;
	h=To:Subject:From:Date:From;
	b=u9ExiWwzQj/pwnytfkd/w68G9FEqlUrJkW+xyGFsPvDEH0727TUqJ/alSxfa6DWWX
	 Gkat1ZEYsNjkg5yX2mXTLdZ/ZF12psNJpGWcuwLAJYzz4Y6FZ3qoSOjXtc5KiIsLRS
	 cI1FD31XJg+5KJbqvIMMBcHBJT2lDyJOJ1URAHmfLQZw9ARae3xtgmoPrAYg2ltXw5
	 p2Daa9GTdUoI2EX1uCJRA+iqmvGdjJ+mgzK4qGkrWy+pbFMt8UiDdlpjGolz2Vf87F
	 FYe64k30ofB00rJCPQqjyufUNFyKCwpmJwvzgZrb8v8yLYj10gAXtRQmnDMDif5Hq3
	 dgCBn1KJxusCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE0EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168832830870.3756.5312824160814979192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547847423fd5809e11080d62048f974cab71e65341e57a6b7b294924d5c8f526
Date: Sun, 02 Jul 2023 20:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688328308
