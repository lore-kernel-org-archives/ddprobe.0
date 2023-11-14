Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135FA2AF01
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebQXWIO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF24C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700003896;
	bh=83F6RAK2DuPUflv07PWG8Z3yAvnO7zHp5Z3dosj7mLk=;
	h=To:Subject:From:Date:From;
	b=ebQXWIO5wEQbgMOcXejiTnFwy/iBPGSPHZeN9zbulPeQMkObwGm5VlyLyz9/GNBcL
	 6UCWcqDGcGjTUi8/Mo6lOD3WH4FT4oGyvgQF4OgrDNFZD3bk0Wxhv/aYOV+pve1iQ7
	 rXqD0NU/WStTj51UGfexzuun7Rkqqpv6r+Y/3wyu2Jlkwd4Ck5uV7GRv02u82XAE2c
	 sNfgkW8Pn204zyK445nr04LEGaCNgk67vev4cZmVZx0J5P5zB1N+jvdt9S7mZsupEj
	 OLNvdkkNu0tfbm5L6E0z3cqBaMopnMYE4kitbhBTZsvX4p6wbg3NIg/u/C9Y3F5Asj
	 xmAHZfYseT0hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF9EC46CA6
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170000389644.29152.12051141256904420503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3223a7e4575800900b0d13a35ea4f7b34cd8a5b69903a62f6765f6343ff37a6
Date: Tue, 14 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700003896
