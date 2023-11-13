Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E03D988
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeXfGlcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A83C433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699918096;
	bh=KnWeT103GJ/Nt1OZ9oteDefBgkJhXOIXRPEtuD9Lqig=;
	h=To:Subject:From:Date:From;
	b=HeXfGlcdLmwfYuh2sQBcxU96KFH7mWttSBHWSm1C3E8gl2QfglP9lP5V/FcWuV/Tq
	 JajTA2RPct+y9sFwlhOJGFknZuoFfUuDeb62Hx408SeXs5SOT04QcQBNZ+QSMWzUi+
	 PuEiaO2ukBzrggwmqX1CDemONK23+lIgyeksfF9YqkeGJwCjyUBPk98jB4IHHybm+W
	 joehU276RKtZa1NgHPv2C/XVuwIDdeXP95pFRRwTkYZ2C1tN77RpV8kJK3hLzeUFDz
	 Zv956varxuDtSfTk8lWh0NHMClBnHrP//mg2emFCxTF8dGIaMzF7zZC9g7pJVrXp8o
	 teB37Oi0yhr3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64273C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991809640.28207.6420803245987251199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b6bdd27cc910c7ffe24cf64bf45532a0db966313795aa3bca931b1a914189b
Date: Mon, 13 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699918096
