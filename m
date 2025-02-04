Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5379E1FAC5C
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738707354; cv=none; b=tIllmXcIfgggAbYq5pyMOwRFuJPyRy0u5/sdksUuGycRUjapIXFULDhPBwt4vmzMuFqbq0qBgBM4BpvbR4KMwFaJg7XTNyM2a+5Uy7jAWVjXIFFMker3/ZchnMDs+0FjCMHPYRRbo9Kp8ofQY73pAf81KasMd/recIJPypiMLJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738707354; c=relaxed/simple;
	bh=UjHjHGymrhAh/pT8qxRYO4EjIXtUrhu8RzWJC2t3mZk=;
	h=To:Subject:From:Message-Id:Date; b=rLRi+lGBPaMzc9zMl/WERziJz+faRs+/l7qyoL3amBMSvyo9+xWOmaQ1Ih9DiOd8De834fcKmYXYky2fBK4Gb7eIULlxwF++N4ZR4YPlPStsCm8Yc+JUiqBvXrJOII7suBM/AmccvXwyLSYGbn0XidLmNdLQe1HL0jzC4menQQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3PBzqDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3PBzqDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA4FC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738707353;
	bh=UjHjHGymrhAh/pT8qxRYO4EjIXtUrhu8RzWJC2t3mZk=;
	h=To:Subject:From:Date:From;
	b=d3PBzqDm6NU62Ow3rbMUsWtMs+euVU0NDKExmq5BYcbmPnLDgg6lux2lBEw1Ljatr
	 hAf1pIM0wtsy2oDgRwU+wcCUk8aBbh2VC/2iZZ4fiBrb1wZz8iCnzR7FweIqknykr6
	 uUHaT9Ssfw9rcGtWO9UVtstYiXKDmQSowQDU/Slnt7Za4cwq6jzeN6zIpFfHTP76nQ
	 1TwhkF7SXNkW7MEP0hG2YF1MySFxM9ogENa0iD1d4MxUwOGrNxS0NN0bRo1PvCr3ZD
	 cTM6r2l6Vi2ikzJfEOPYhL2ReMDm+Ge3nr2z7WOJg2Ir8ktQT5K+eP3ahhVXF1hqvh
	 lKn0jZlZhWshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB1BC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870735363.16224.18043044184257875096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bf8640795ba95e659be72833021b2486cc536d0719fe9673ed0e069c03170b
Date: Tue, 04 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738707353
