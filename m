Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CA7154AF
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDQeyFqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95728C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699025296;
	bh=28PAPirgfbX57BrhQiefjWwGABNAgyBUg4gB+xWh+L4=;
	h=To:Subject:From:Date:From;
	b=sDQeyFqvR7l5tcjb/1lu/xG7X2lNtZE+H3nGEB/6gdXTTHmOZNui5mH00D8a5cACB
	 pS8Zww6VcqEWaSkexa9n+luPKnsQ9+KFCdGcn/kZYh+fu0QuuhJ8W2dU8ZW79g/bq8
	 GAkAt4Er1uYkcHgUKJrYcFv35J1F+Popi13KCgDR8iAZ4X/uPKXJFERHPcUqltOgHo
	 j4TNyw0beDhgTV4XVCV3NQTVUEkL9vtKBidr2lfquwNN0zI92tPzhcfI6J8Y1V33Gm
	 Lz16TcOw6WLW0/Pujc5Ez3wUqBouJnTbhsLV3Vy7m6klVQCX4HAW83KMmgB5jD/o31
	 EbuIo2u/dLmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE36C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169902529642.26859.759144963946615046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f267b31130d812c5417c90c8c279a7392e733f26eabcfedf61eb624bc71ef78
Date: Fri, 03 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699025296
