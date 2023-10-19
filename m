Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAD629CF3
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV019s6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C584C433CA
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697725693;
	bh=Ld2CLT2EhhyZ1Ls9i7pFRBXN7/Fj5PaBWZDAXzfX0iM=;
	h=To:Subject:From:Date:From;
	b=mV019s6Kaz0NQ9AjJXM2SsDGM6lUsyZ+UjXvM9dDNQl8cFQR4dRZGQl760DCi1YXz
	 39in47K9vFOhAVyd3xYy4yLi2/hxb3zrPpVwrx7YTptMGTO1+oHlVXTw9+BJSoc5iS
	 EhFn3oEaPu9cCq3/AFOQatpsGlUUbwPq7k21LtXsaCe9mQ8WHidZJRn4ZGKbawah/q
	 8izabfy5k0rSemgVsVxoqw8ETji+v5AjtHy0Ak0IaKjZtMuq+NoaCaG1OoNByGE8hD
	 XffCxKiRYlyRJZPLW90JDtAzOhFBGUIHbaX40audSSI1DiCYe8JNc2Bu8bqXCgRpzS
	 wx+dwMTHj5ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A88CDB483
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169772569286.5065.14634967836272309215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945bdb09fe5f206228cab6045aa0fb7cde5a0df6c962776f1fb624c3caf0ee29
Date: Thu, 19 Oct 2023 14:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697725692
