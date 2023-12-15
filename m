Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0499C56381
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P39tRKdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5FEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702683496;
	bh=5EuzLm7HAB7jzs+wgqY+svMZm7ffwA2SFDfRil3awhw=;
	h=To:Subject:From:Date:From;
	b=P39tRKdwrmHdnKoq1LJo3jB5oIzwx+3Ysgwr5a6qpEOGayvs5hHvR6hLb+9QzPsNA
	 pe250o8UU6lrhvoZsY7p/y3WPsVy0fitzfkld6RTr5k4h2WRJE5d0JR3tPa1ZHOMFU
	 R0cYN6aQ1Hza7n/2cIsX1Y/nIbOtmrvNUcpItAdT5UPP8wYRAgI910zDFExDTxKCcn
	 Dz6nfAVyiyaQwRO8IQ8siQimUCB2x70xtWZIKt40+4M4YFnY5HoL5tsrNrjtOJx4kq
	 GYghFqG1HGZmXnP5wBhzOz6ay1tDXw3teoG8yt4cPJNiKwpCD2vu7EcSpS2ROVXbGV
	 03Nulxf1f35kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61102C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170268349636.18348.6415380710569361200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c17c844685a84a93f6f826457c89df77ebdc5b4e2291a84736e3f83349df55
Date: Fri, 15 Dec 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702683496
