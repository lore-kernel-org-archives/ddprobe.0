Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4A032ED39
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788181834; cv=none; b=gHlbVD2wwlcq9pyqthYQhHR8by7y+zHqXbm/JnqaqdMSRyT2SSPMlALyjJjUlrnV6VZty5drfQitwWmeBAGyRrLRfnCR2RmmUNdtMEPPf+2ZMoYayOVdByiRdhpnO49P8H7fEmf38V1OmbqZx3iu1PryhQBzGispZvCej2UYNUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788181834; c=relaxed/simple;
	bh=IkHzrJJ6Vn9dCsq9NrKAw+K1FogDptaKuJl8sa8xrQ4=;
	h=To:Subject:From:Message-Id:Date; b=Qd4UkFbcpthA7QKi/y11B4+MDexQhV7b0rWU7DWd0zDwWKR3mFeSBh+v51oDE5EIb15EML205zulM7qB1z2iQlX6ao6lhNZVyieW4BSjop5QH7kRQbG0G2YQ1RwB2nKBTliwFYabQ4BFUiZ6gt61u4G2yUmwQgv5Vk7/Jh7eIts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYgWIpE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYgWIpE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5295C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788181833;
	bh=IkHzrJJ6Vn9dCsq9NrKAw+K1FogDptaKuJl8sa8xrQ4=;
	h=To:Subject:From:Date:From;
	b=OYgWIpE1T+BSrnDu2Lum+Z1ZnnqodJr2TnvM57jEN9fSb/7rGo1J/cpgHVL5xr6Pb
	 xeGRZXEsBykQCHvTBG4CNIWg2VcgSVJxl6zZsBrIXIsSfHjQCcpUCe9/CXXi3+G4vq
	 TRojQnaV//oddnBjqwndKSWRxv1mp+HN9vFnX+aVog2NOgnMzOSju2C55diYkvlgXG
	 ps5s5QIqt/r40C4ijUgpGlvAhBp5WLVwTa1L6o6SqQ9D/IygTlLEL9YJFmQrACaIZC
	 C0dgYWJ2asF/GNSX766mdEatP6r4Ng5LDX+qLu2n9Ck0TrR0SPC3LGjMI4c1JckYuW
	 XCJFLnEH4GWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19CBC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818183368.25523.3612857121244811790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524b5678ad4796163ff738559602b982ca2e27772192f16a57bdec4b5f412f34
Date: Mon, 31 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788181833
