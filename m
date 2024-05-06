Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EA2142E93
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714994543; cv=none; b=uaAWMWkCMPCTmehx7Hn5xqfB7NyuRY4TJrPwdZeRvjyHP49nvA0b6OkQKfc9flGiUpLGvdwqpxWQ1dAXZ+Efey1S+PL4J9X6uF5DxnPEASJbgEhzdZT8fX4fPl4agjxUolSY0zD2B45XQLPCgHD0UpUp4qtaJ+HkuViL2Kg0Y/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714994543; c=relaxed/simple;
	bh=+C/QDQpzm1Lxis+3mDHurr/iFBGE2XoZ2P0DzNlzFJ4=;
	h=To:Subject:From:Message-Id:Date; b=Nwt7Gk96p08QJl52Imjk1hC/ygDE9uV2VOPEdeMm9J+8BM7tz0jKHnjWyBC2k8cbBSpDiBRtN4EgU+QGWx1kq6ndnfb+dopN03WmDGrhksRMRQ80QFfx4vOiwJtJvIL1qWWPXipHA9QVHYc9ocpWKaDGoO0Pp1Zue+bDXsHSgtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdoVynnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdoVynnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0757C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714994542;
	bh=+C/QDQpzm1Lxis+3mDHurr/iFBGE2XoZ2P0DzNlzFJ4=;
	h=To:Subject:From:Date:From;
	b=OdoVynnRAMRRVXrOg2YJ1wm15CdI/7Jepw6EoDyCqyXdVWtbktlviyjjm/V5BRB0Q
	 6F1NDyo1hERY6+h1l74rOwYGQUPA3aXrOWv00Oo92DLGyrp6VHV7hRl0TFR/0uu6sM
	 BVwwozmuvlH5Ze5S9EgdSTzE4J9yPDBgNlEqF8o0pOqIBZBBxOSuVviEy0zwytaPjk
	 7ciBtB2Dgx+LAJ9CeD/J2KTEgpX9VxwgrLBZb+btl/cHobYq3jhxfxJzws461A6Z4B
	 STRihilJdjN/N9Pf2wimX1zOiothrxb8hutE4hcte7aiDUMxVesUg2hgNK43bX59w0
	 OIA097NxOGBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BF6C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499454281.21076.590664166573599897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1bf9fe1f6de97ab08d1338281e45aa675dc03fc011173ee5822d0ff6d0d919
Date: Mon, 06 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714994542
