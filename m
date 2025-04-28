Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2238C42AA6
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745869194; cv=none; b=lmdGq2XfRGw/HBs700E22tHqanp/I/mRfnwohUKQeYVBTiQJRXZAmPVwXv33yspOMgsWuuP0+mIKVJeaVRJIEd7i40Y+0o0UwqPaKM79w7+X9o8jC5cBrG/h+jwniYm179/c7R+tmQEldTwf98McM4RhiwediAutLYZtZZEJKiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745869194; c=relaxed/simple;
	bh=/t4L9uMQ9+aRN+EfPMuhK7u4/sQBFk3gbIBHmL1QEYk=;
	h=To:Subject:From:Message-Id:Date; b=ERcYqps41HipAV2LV70RNyENK9JiR578YJmQ/I/w2ngSXo+sEZdS9CIzRHBO8jvcciLBjikbgzuaJw0SzM3pLI5+oHU5UMSaDIw3Ymd464S1Xt6MX3i0afgFRgiRQnBpzN/s3mLXIuXm4Na6hhQ99BG46NfhIQWJh8bC2TwDZt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzMu1rSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzMu1rSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF5BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745869193;
	bh=/t4L9uMQ9+aRN+EfPMuhK7u4/sQBFk3gbIBHmL1QEYk=;
	h=To:Subject:From:Date:From;
	b=tzMu1rSuXvA3FLFVsIL+l8uG/geqvY5kCMCAe0mmcRr6rfoy+2qdjfFCeNCBLclob
	 3bePwtAe4NXdpbSrvO+Sk/zn/+d67hsgfIMPjOimw/471YDt0YFbLQ1iYHUzb8NY3P
	 ltXKQKWk/ZGWE7Kgy0bnYouXWUl6EKC5w4evFQXWvZm7jmw8HKAFfixx3+QrttOXDO
	 TRoEwwR5f8UbpDjvC2pGs94cy119LHfqaDLN9ff32Z9p81IJuyhL7MrDhCWLVpeVom
	 Ub5fRlIkHeQaO8Jd2SCHFpAhaHxEbOOKNRgxmPB7T0h0IZGaznHvKZ8/SlR07O1DI9
	 MuHz1PNNmFr+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A0C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586919357.32008.12826429569559044973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f35199389b18061f462d1bfd414b66d55ea2394bf09e640387409027875b26
Date: Mon, 28 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745869193
