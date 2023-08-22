Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722717F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 03:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF86DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 03:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692676448;
	bh=YdfcGYQxFV9KiZGXIjbmzc2BsFpZbUe4r8QlMjPKA54=;
	h=To:Subject:From:Date:From;
	b=iVODeU7FMrBb1rwE5fdMozKSIzWHA0uzTDfn2NpUi0obM1pqpuuJWknedcUwwOZaY
	 5weJKkWT1qnda8FxAAeJwfupR+I7QG7D5jMz7QOhi/CIL8lJUxuquceadjMmfVDy+R
	 K2D6LTklfx/bEtLjatHdFDnW6YFqFiC6NSqjI8uRvRy1i2MKvY6KeY7f3Ibia1efUb
	 +0jJ1sOXJPBxSHLg0p13GvLwfh6bAqvynNo6u9aOjxHr+A/YhHIxXBdkpowwfEn4Ff
	 QX0kdTMlmFkyJupn/zeLzfeUvyB4ZVEPnU7dhGt4bKIhJJbSMlxq0NJOonmeEWfxXp
	 if75JPvuEPkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFFAEE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 03:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267644868.29664.9750142970632489110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d532ce61d7ac869c75774545a4bd1a2b865b86eb4712c619cb29be32339e1e
Date: Tue, 22 Aug 2023 03:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692676448
