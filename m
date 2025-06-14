Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C78615A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749931794; cv=none; b=IqdQMVFtvr2F+F0ucWzFYHywAAMlz8H/sqEbChtWHldaBkBEGvUjwoLi2OzXvyIeoviKLDtl6wtSP/kJ/kFNly/Sx4WKhknwWgzbMMoWeZ/JTDGNDoeejAJ+7fRm0z+/z6+tULB22Mlg46ZpOMw54AJ1W5M68cNNfbtjB5OaIPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749931794; c=relaxed/simple;
	bh=iWIaaqvwsXFfH25fQAvIXzhIRnGsgQucjMBR70X+xQ8=;
	h=To:Subject:From:Message-Id:Date; b=oXyxlxfVYcYWDw3Fv+1gEPVVIyep64fzebaStYYd6DKOzbUVpqS5oM822lk6dLuo2QDUpcIOzHC0xk3mABMSabcL99pH7HNvqO3TanIBx7epYRHfFLQb2CuCRB8GBSiaa2A+paSjaV5XlKmyVZuHCoAfPzietvZ0Fh4/HpUNch8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUspCXCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUspCXCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D7FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749931793;
	bh=iWIaaqvwsXFfH25fQAvIXzhIRnGsgQucjMBR70X+xQ8=;
	h=To:Subject:From:Date:From;
	b=EUspCXCDSpaLMwK1EBajJK+QNyTDvbR5WEp/r6LbggeweZHy6G4Ky1+BJ2a+wv+X/
	 XskdFP9CKcgI7TbvG6yl+0Kml38alW6HQ/qDjKdRrrdkOzrQgYXBp7so9Fq4fQ5HoO
	 16rMUOepXLDG5Oe5YMx6jAEWw9YaQhPGI7nfXAskPydjmznePtN8dLn6qIN5tIT1TO
	 vrSN0354ZvKuT1FvmMu5MiE5ksLtZg2yL0jl+IhYOinYpoaglSZTKDqs7w7d03EbvQ
	 3OAK6nlTxza25tun52xNQyBOGjMW22wZqGPnsjDzH1wSMHbwRaUVnMLz0EvEUVxqtG
	 AIZn/Uzt9CrCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0079C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993179369.24098.10374771738361830158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fecfd60f4efcf6d42313331de6c0edb5075ae36fd4bd9e9d70260e7cb43889c
Date: Sat, 14 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749931793
