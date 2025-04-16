Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6510E9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744829395; cv=none; b=V+28+6+ytB4ZHx0JU07V9PCQcmnm1IXcCMiDzuVpk3QUEfC2QxjdC/4ACjc3lKCy23yzkgXfVmCjFb406EZLWIxn87ctr9hcSCWLcXqZ6ff2rUBUWaW9Ub2himanzhUT5SmoC7FGHMzYmXESLT8WtZBIzU5MbLXZ5hVMXcqmEfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744829395; c=relaxed/simple;
	bh=bCa1FtpZBtfT0E8Xvm7w3NefLMoJI/DPS2L5sjzBZW8=;
	h=To:Subject:From:Message-Id:Date; b=I4F6L1LxRXpw9P7G1zRBep93H2eusFYsgZA9hTvZdN0Lw5K7hK4ev4A8L+Lp1GUUiGtlwKh+HLwTM+SfmZz/gc8A9/JdlPuucfqq5ueCzCQQAt/XY/lR5rdomgw51Scl0hW8w2QvqO1dDEMzanrGeTKjf3Vmld3ucuNBoSkfas8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO4y3jHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO4y3jHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B41C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744829393;
	bh=bCa1FtpZBtfT0E8Xvm7w3NefLMoJI/DPS2L5sjzBZW8=;
	h=To:Subject:From:Date:From;
	b=eO4y3jHHrd3gbahIEUgKrdrniotRxMCXxQ3bxlA07tLVQI3PtqFV7Q+EgRoobqW9G
	 9hVqvxOY+bsxSzDDVNFGu5h+4BzUe9KLYIjV1gPj4nn8E1f5vFrbdh+kvbDESzVrOf
	 ZYg8qC8jndYPqyfYA0/8iyy3yRA1QZnCGmH2U69hFAZpNUrpLDyospTtlfUCyXDswW
	 9BtxRCC96UrFDB7ouzA4aqTkqR9O57lmwp4gSE21XBtAz4g4NYWyIa0BeTF45UX8x7
	 n4yrdB+GcS18BRPyP0kz00s6GOeIw2W0wruWx01+PfE2VxiaidHqnqqXBMn/pAfuL9
	 4UMz0wtIQPWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685BC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482939360.31595.16131439524428543530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe08d6517c3c7ccfe8e971973ae0aaede171f0e1753d537a1657b3d96f834ab
Date: Wed, 16 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744829393
