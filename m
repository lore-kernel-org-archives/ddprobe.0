Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419BE1DC985
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741888734; cv=none; b=a4LsioXFGAts54lg8dgwmDfB6D+CqGNfIP6unaf9MtgsdVqDcB71+2QDr3+8Krs0uYcWFj3dn6WZJkz1l0QMp8TDnF2Nnmq31ZXEz9jbWlpJeXsqJxHgv3fVFYvrMnepMC2SflUYBWFIldfr4L6/1YwBZkRY5CSENeYH/btH244=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741888734; c=relaxed/simple;
	bh=uPO6jn1fSzfKiuH6dh+rJxz1g5vchtPqmw1uRSyOwqs=;
	h=To:Subject:From:Message-Id:Date; b=ZrqZ2Skp4ZaecWGXcycljJkt3obZz1QfYusXFNtWoOJOugAC/Yo2SZwqH6duWSqUSx9neV0H49REw3xHIizsd/Tmi6nHVzeSWesKtOLbFT9gThKSD6Y7Q2EpT7uaZ46hUGMWI4pNH6rWUJQE6w4TuDbfQolsqeU8C4Gq5B93y9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8xOYELi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8xOYELi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC46C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741888733;
	bh=uPO6jn1fSzfKiuH6dh+rJxz1g5vchtPqmw1uRSyOwqs=;
	h=To:Subject:From:Date:From;
	b=h8xOYELi2Gxs7GnUZnYBR+u8MrUuWUUxQvrFJ50YtRgLocnu+Q70HArc2uHkfvqlZ
	 KWKm8kSHpRwFdSna+COt8GIv4rkQASi5WPi6xriTf/kN8yYJQu5iwV493T0RE/gd+h
	 vKJEAXbSOOmmSMEKDqPvowbp63hqtKNjd+63JLPmJ3CGXEMTeD5EBJCWRK1TLmGeEb
	 GsdbhqsXv6O6yEO9FFpXLZm3oRDVRnMhqOAXD9A9fARlIvkbjsOt2SF3Oij5ySSOxO
	 5uFeEKlJ2nmePlbQwwM3wRByA//yPTfemIZH5NaXL4OnrYSVENAZBLkTPY89/NZrni
	 J0hD/l2p/2oxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499EC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188873357.1513.8851439797621777298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7675221af0078258c3b916091419ea0ba13eb216c888a652914ac1c48c46cd1
Date: Thu, 13 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741888733
