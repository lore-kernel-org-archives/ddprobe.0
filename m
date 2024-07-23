Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC87433A0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721697954; cv=none; b=Hc7+IoBO5Yn97KyWIbtCGHcbHCyo9mYfOinKcDp8qRbcOrUTRtck96Muelzfj2CaQxMwsFOYoN9osnL02tH8lkYVv3i7JdrSprbm01ATwWXWtF28/Ra5lCLuPatxBG4qCzdlutSuOkGx10hZt5Tq6tBN/Cco/oxBx4QZbVvE1ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721697954; c=relaxed/simple;
	bh=huEhBeUO01DklPofdse4pLTNqwQ8fkHhBRgtfXTbuAE=;
	h=To:Subject:From:Message-Id:Date; b=D3HHII65QoD/R/N7/duA1Nk0NfEcQVwSvmwoyT6wJwMbsoggAKvSJTR0lwA00PIJc6QlFjSSoX+9aACvA+LErpqfwEG4AoBHUSWXJ+YRPhynsBV25Fk1iaQNNPE6F8AfQogXyIsL5cJzUP5qh5jE7Mt+AApyYbhgkNK+fL70t3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9iG8EQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9iG8EQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBA9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721697953;
	bh=huEhBeUO01DklPofdse4pLTNqwQ8fkHhBRgtfXTbuAE=;
	h=To:Subject:From:Date:From;
	b=e9iG8EQuHFm7Z6AdmLnIafHptifA4r7pkk8a/L9Kvv6lY9tz1v9HOtyF4L9HqKQSJ
	 6BSzw9ZKuedPdtXxVsMgjeMaAOII7MEpPtBVP/MUXMDRfawrnvE3HZIDqCB7iRFbzg
	 J8C7orUWhCWdulaU9jySIbSOadNTGozmqyO1PJM4yR8jYJpvoM5DhW55WCDcZBy6BG
	 U1AxyF3Mf4OC8dPDNY4sqc2RZzQOxQ57ZWCcy1XWTZiFjs1H7ZPyNH91cEBtrhQHo6
	 l5pwFUievXwLPxLCy5fufMn2eKA9vJ2gaXdWrmX4CEJlKu+BF3zitqo0XQ5wzdSPa0
	 hXuUtD1Z3jF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A68C3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169795359.2536.1205219188395486229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c6aa6c78dabd56e1778fbe38ffaafb1e75ca9e3900ef0dd3d1b664e6d398b0
Date: Tue, 23 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721697953
