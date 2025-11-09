Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B671CFBA
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762696794; cv=none; b=BzElB6fyzqnDniVFh4SnvJwOAc4H0wwmXKttCZvT7PWt7PHqlA5LTQwQ/gomWG/9ymUa4u2cYfoTTswrPvz2UNeWmm9bDW3S/UuqFYDRLauDPMTS/muDQr9P499TkTMvd38n/+NPfIwFEYnQBs/9FLis2ZdLnIKBcawyhI7cLzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762696794; c=relaxed/simple;
	bh=RyoW9/8wIGf8aila/uGzNWstSvhZPP03Bx6o2QIILCs=;
	h=To:Subject:From:Message-Id:Date; b=pBrJ8DYgTAXQajGvGI7r5wbdgbn3sOGFByvvo/96nTcYmN2dpck+5Pg0bZK8Gwlw4X7oVhQ2I+kBUPifaNym6BKYh+hruGkb0LNXnbWtemkmdViMg5KW1ulMoMckDo+a70bABQYWATw39quopNhFtD3nALFyIpaUwDFiGTQ/q90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+X+ZV4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+X+ZV4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762696793;
	bh=RyoW9/8wIGf8aila/uGzNWstSvhZPP03Bx6o2QIILCs=;
	h=To:Subject:From:Date:From;
	b=J+X+ZV4ucuQF7nA3k1IzSlG3TM9/e6NmgLtAvwpM94oRqOIEoI6MxndFhLvPHtE8t
	 5PepHRLObVVBBYr8qLGz9641K0ooS8qJvpmUYFfqbqPdSvaWZOg96tzdINzpZN39p6
	 obxVmTsFitPI2E7H5qcjR9hOB0B6YECLdh/x3XCJ9Xu520FFzx0irn8ryUEhWS2bLf
	 fz2y7ye0fxGKU58iqwT5R7okDCy2G+3PjsGb6sdcAOj2txF9wduD/0mImfMmzgQgHg
	 2s1lcKWQUrra6uww2Qwdw6JFyQjO4XqMD5Que6+t6fJpDvjPfNO/USfTn8mBY/0awB
	 ETnk00FVzPb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF48CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269679357.18544.16809560471879530473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc29a184d50dacacc44310cc2bae789ce44e64d93661036e38adfc1557953253
Date: Sun, 09 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762696793
