Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7AA18658
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqscCxn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84991C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700421496;
	bh=huR4m527eyCYa6AJk7TrUxCG8WWgDFRaZ42xX486iUI=;
	h=To:Subject:From:Date:From;
	b=fqscCxn/jBmhWYkPUaosmUY5RATmEoAs6j6ryeRAha0+EwWtNleXEkqE8hwV5zjd0
	 3+yr5Outz0tj9je9t8hTMOHR7aFD8FdgRLqjyAfHru9OLaSlr2hGdQpBGBQiRgFjH9
	 E0x0wCLqXw/vqhw5SLe3WPuaI0MKwvcfXB5rmtu5CDKRZq/GJR15pfid5OL9mPeew6
	 JBvVzJdFXWkbBKp40WVlaBE0PBuvxrTnMSHMAFcZ0RBS5qpYmED42M+I+AXOzlAvHM
	 YG9Legtm38r7PAr2vyLPg8gnysHA8KUvqpMAT2DF0AQdprquX2RbWce6JjYlhg64jv
	 AIHwPVzQ3ogHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6749BC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170042149638.16273.13040483783412103695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92bd5f5dea3658ca6b083f8ec70d704933e88c14c9c1c4b3e9809b1ca6b975b
Date: Sun, 19 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700421496
