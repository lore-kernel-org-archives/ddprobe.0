Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC722E3ED
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7tAgyyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB620C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697585828;
	bh=K+JTC4n4s5VBEpm524zwxA7njK4w8F+bE7a+XreF0wA=;
	h=To:Subject:From:Date:From;
	b=s7tAgyyhPFfGuYV0ChO4ii60GIt/WbXu0YU5/AsRl9LPn7O3bN3nCPshmLjbcf7z9
	 bOhnCCV9KFEKOAHPFYHB6KMD498yfW0fK7hsCRWsq9TF3NnCBYnoieoKp0jE2m2w0B
	 QpYyvLO88jVWhVI2I8LBR1oBsqZLRYKGisWDXnAPUkaDp8I8eMAGfuaydpY6ah76KB
	 W7MklwMsCYs0XP6IB5qvEN3T/QebwYOMpGBrADY3l7zjwROWDoMAaKRBHR0GhiRFJe
	 7F2APuEUqUadraJwWPO5MrIa888vJ8UvT4JpZ+QihScu4ASK2oNh4JbqHncL2UkQGe
	 u8zisz1W/e0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F51CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169758582866.20354.9838594301752177231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7421690bae9e746781858303e370f21dde212df25362099c95b754459657a23f
Date: Tue, 17 Oct 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697585828
