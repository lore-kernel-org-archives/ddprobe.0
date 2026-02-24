Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AF412CDBE
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771927493; cv=none; b=jIJ8L2rLP41DblIVPEYWy9YDLDtvB7K6LuuorwLyVLDHdEFmyZtW8BISKiT749/M9gIlLc4jNmNOp94aIaqwwo8m/080tjEoDHGBS8hi9A57S4VruMBLfqO3dj81J2mChNJ5NPoejWh+IN2NtSJVVjnW+UepDxlR61hegQz+zic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771927493; c=relaxed/simple;
	bh=YFUDNcmiOgOWW18Yxmcfvl6qwv5Dz8dRII3XE6oRvis=;
	h=To:Subject:From:Message-Id:Date; b=tDDUG2sYa/M2SozWsR+bin7vN9z8lgMI9V4yWez2nONq+p/JpflBsMqK0TbLeJy6isYH3S/G9d4atKaXCgKFT8V6sPmUuOpUkfOwqv8h9aovMs0w+DQPqMNXS4H7gHSwbBo8xTqQnv/kKsiY8f++kvcSwv7Z2xOwUAfD6/loGkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFwfp5bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFwfp5bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771927493;
	bh=YFUDNcmiOgOWW18Yxmcfvl6qwv5Dz8dRII3XE6oRvis=;
	h=To:Subject:From:Date:From;
	b=MFwfp5buxI5C0R8vPVHt6PYpDgD1+1ax2PBUww8DPW+9pfX2rBQGaUZK54lFcInAa
	 6cSN2AGa+oHTneg1JMq0K6muOb+CDwPY8ZNGnIo1mnacFrCDjRX+Z9Chu9WgYg6NA0
	 PeoqAWzCsEDwVl5nh3wMOfhWAnHE2enFQjZ0UyV3Sak6CPeu0ALZyAb7F+/eH5jczf
	 4QPkM4/OkYGt2v3aKoZxNfVxvHPp5LGhytLnQ6iqA23MaiHIFjm/XXrrpvW1lt8FSN
	 we2v0MGGRa4p8pi+Hv1XsEs1Ys2fMcHFGwXAreVS2Kb6a2w0r3v6Jku2ckITccjZ47
	 r6aivmP73d8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539DE9B248
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192749359.25415.5068123347516584240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d94ec8c5746b2232ccde01772b9521950411c35239b78d7384afd9007aeb62
Date: Tue, 24 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771927493
