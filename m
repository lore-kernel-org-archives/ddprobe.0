Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB1218C38
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BF9C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696257368;
	bh=IAx5ayrmzVTQyowyE5zTmB2g4QzQsRl1rT7SIjH4JBk=;
	h=To:Subject:From:Date:From;
	b=bkFDE1fjGa9aBrFcrDSdFpq2yzkxqCPwrZrxwNKAdYy4DgKmc7BwOrseiO5Fo1s/t
	 D5Z7QBJnv7OYZiJDmsA+r5IyOkmrgJWAVpxpTfKB6vTabNV2WyEZ6onHLhw/K/cBX3
	 vvG68MT3uk50pcOpltnzAnKM+aWGXluL2ZgKOFdZEH4FH2DUqJ8wgXF5LyjKBYuG9f
	 4h5nkJLImPgNbCz8nOh+TRFnUqNdC6TypXUQPj2T+dzXE5b3pzrWTBS9gLaUnNQp21
	 lpQBGgq86Ncqhpnmq9Jyi9QSV0bZhJ7rw/KnW879WsoRqSVOmGVSdcO+liwPjljiPR
	 ZTz0L8S9BlCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5487E784B8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169625736866.1655.12646308638828247761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf50c651a39be81d4ce4f15b394f4aa3d61feb979c75d49d5df2e764030bc114
Date: Mon, 02 Oct 2023 14:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696257368
