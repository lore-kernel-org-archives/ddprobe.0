Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E7F1CA9C
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716262943; cv=none; b=J1j5f4L6OJ5v3jcEPiVUDMuLFhQ76nLVfC9i5lYb0awS+xZjiBXrcsGDH3jL28Ch7Tt8BX0h7c9EMS0cvFV0y+7Ig29RpoCoz+3pim0q5ijtHqlBmTQEkY8cNh+OzkCtfWB2uVQ5sDgUHe1D/CQCQG/kuAhUQWICYy5zcioXiSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716262943; c=relaxed/simple;
	bh=+wRBSinxI3ka03jLH1Ox8X5ncfg7kjdq10jyFk3jU6M=;
	h=To:Subject:From:Message-Id:Date; b=LBTzxrqpoxU/wuPmvKvV5fMfix/41D+aeXXAPpJwm1zl+1mEvmQUUN+h1J4VSJ4+VwK/QwEoM9y39p4783s0nHDwbqrKs9F/8cltZKc+R3+rvwOpnKY5d7pPv8TrHTLy7I2YvdN48jjK1c/KwiBQDj53K/VbGXsFzvPCUl65WdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYj/Rw2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYj/Rw2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8FFC32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716262942;
	bh=+wRBSinxI3ka03jLH1Ox8X5ncfg7kjdq10jyFk3jU6M=;
	h=To:Subject:From:Date:From;
	b=hYj/Rw2KL1Ngc0p0tyO5WZKxbWQqxExy4assSMeIk5GG9oPCXSuRcp8OTjoPcamxk
	 zEYauBo1nd+9U3NZs0bsfk4bATpDnWiUdN01wdqldCtIRfKIFs7F+SjQY4jHBMwG44
	 5uh7Tz7l7mxcYj3IgQso8GlEEvd7X1LflS82idim7h4ryBkJpDL+R1QFH6QFgN6eFi
	 RWSH5d+l/tCcIdKQUWTqT4TvhVrbwYabiYmoWNqH0ozjqZ+GM7KrhnRO6dBU34MvAZ
	 AS0S03x5n4QsLXhEBENILUCTyFq0aUjtB+A2ffGM5U4IScaGuZAWofYb6hG6stuKTs
	 WAhrSGEs9to3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F27C25B79
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626294279.20150.9024344513826245287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725fb51c2d577de5bb2a25d9b61b6016584fd59d6987f34e7a665c396199cafc
Date: Tue, 21 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716262942
