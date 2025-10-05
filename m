Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AF41C6FE5
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759688994; cv=none; b=SzkOin+W8NavffK5AkvjXmuv6BUGhjedg5o0ZpETetPNd8+OoWB/2hBKvglxYCEIHkwOOmDBOPBniYnP9mL1GqZ+NjsE7FlYsMWCO8kbYoqWq4aETNRp890bHK20+oNFY5/5IWpqBjvjVHorN25Xsice9LMChwMrof9sjNk593U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759688994; c=relaxed/simple;
	bh=/9GbrRL1tDLVHHUkOgHIi9Iz7+k3nt0EPm8aPkn1A9I=;
	h=To:Subject:From:Message-Id:Date; b=by4dwOXlgBw2lRMn3nnjYuDrB3gP5kM0dassggAd7pTtok7HaU8Oe8htVwPjXG4+mQVefJaG78lSQUopsitBR/m6H5VT/GhdAVMaaHIoqXvpFqsn7PTS6JWV/6SoonqHqJ3GrZSLMk4D0U/sCL2Vr7FDxc3WCGefRd8Vbr7jpIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHWwjDjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHWwjDjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759688993;
	bh=/9GbrRL1tDLVHHUkOgHIi9Iz7+k3nt0EPm8aPkn1A9I=;
	h=To:Subject:From:Date:From;
	b=oHWwjDjKyGaGR32yQheUMDGKUDiYnT//dImq3xL5kPd7FayCM4AoRBfg5g+lRFgx7
	 CbhRrJ2zCzVYvkZfuGjGmGhvsHK+VDxAFZUax8otMAJslk71cy5ulsOjP0VmXUit6Q
	 oDoLqKJAAlZkP8hLtcGGY+hdF4ZKLEC1mLmoScux8AaK8hhiEv/PTu4bDl3R9glMg3
	 lspiMMRSQp/UrdNg64i4VY0tYmtvfrJDzr1TzTVPm0YvQxC3/D4ytDwEktbVEuSShh
	 DElq+QA2XcLELaJia21Ooa+yISeDVuCbiY03B0ylKOuy0PvoPgJjzn9yvFDXMHibED
	 yvGqYmnUBVebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FBCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968899358.12727.5999740690918203585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4b80b5f0607f0ead86e4587e998f8aabe47ae840c2ba2320ad645e10b58cab
Date: Sun, 05 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759688993
