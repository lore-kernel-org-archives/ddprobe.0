Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2F523C4E8
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747951193; cv=none; b=Reelwl0Qvig5jyQFXmisfoOGiWS1IZ07zN3fika/sKXms9+rXsJgLMeZVJFoAaIRY1nEDSBCkS7sFKeUKnc3R4Ev4kBryQPVwsMpxwZligzEjM6lVmQ/pVnztxNy4zdqWRPZXBPGH8Qm8ioDgEd28mR1r7mtOL2+uslHTypUcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747951193; c=relaxed/simple;
	bh=BvfWwINPCI62Fdax6VRQb+QBL2rU5y24Ku1Mbnc5Btk=;
	h=To:Subject:From:Message-Id:Date; b=p/vuwMkVMMbxT70zktSA/TAq+C4HE2xn6gOAqZWwboNH5nSc6Uf8rW8qvsJVQTSZc0j46k9lw0m3xOewM8pgrwz9KOop5MPAaRYXleoY8/KkUGyonE77Fgna1f1mzihmkfFzW++ySP/H4pTcOfd3gdtONDgC1v3xq25ttYsw3z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANi3CK+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANi3CK+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747951193;
	bh=BvfWwINPCI62Fdax6VRQb+QBL2rU5y24Ku1Mbnc5Btk=;
	h=To:Subject:From:Date:From;
	b=ANi3CK+EmsUdcddqJH/n3TAhyvSwMwX2VSPhqsMq8HjQFQ9ZP1PVU+hEJmZ2YGge+
	 4dtn9CjaEdIdHB3jTeF2jy+r4Zktv6q9n8miyDy/XFv3JVPL8Ep9mtef7mj+p5uxQW
	 DwOHqPvUjqpgXNdIz3zTk6MFoSY//i4eRpk6RWsSKPyOhWO1JNgx/pdYBQiC1872HK
	 FIMJRB3Z93UmHUiN7Dylz3AZRrJlv3Tm6109eTQrI6h68/mOYjbjNqTxgQ9Tr339i+
	 L84qztwkGpr+nZGwUdoffKTAYv65CMAZ6OVU0cUb6dQRWqnmoOBSG+I0DuSLZi/tGq
	 aT1/sWSxmjWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91089C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795119357.30237.11722271514722129946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd0afb2af0679546713b22ff80fd14de7b873fb0bee37633557f33bdd4ab1db
Date: Thu, 22 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747951193
