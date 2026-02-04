Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAD240F8D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770214434; cv=none; b=WSE38xxcS+ugUjmyMYhO5ch2owxESPM88f3L7DSsqr5d1ZMUucmJfS1WWTpmrpeAWr89oAkgafBykhYH35TzMvg+Xorhjk5RhKp4N0hBbHh9hfDogR7m2N30quZXadp5yhPS6HlNJ8H8RCCiauZb5FsVObbAC7SfHXd+qdaYJhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770214434; c=relaxed/simple;
	bh=4WFYvnZnWXBOgL1ALsYGt8iWjb/p9FpLsGIMacZb/gA=;
	h=To:Subject:From:Message-Id:Date; b=IgsBuO6G1CM1dsB14nGOtKhYsy+fgWRr+PRtIuBoD6Pj+wIoErRvzdTQLWWci4DesFE7pYEB/LONEabLyewPZ+A6/Dpm3JKikttTm+hQYk2jy5ZYAjkceTpPW6dnU4QGRUeFEHwkRyW2K27XugEQK/JRpjaNW7Chi7ewAJtlMyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+Q5nz2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+Q5nz2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770214433;
	bh=4WFYvnZnWXBOgL1ALsYGt8iWjb/p9FpLsGIMacZb/gA=;
	h=To:Subject:From:Date:From;
	b=I+Q5nz2I+qk2pqw1Xy9HexBHqZ5x7PAw1Xrq5ZXiqrpJ02SWp4WFLc4UiNDp21wTe
	 CF1P4QPfH0tXnvOKR3pGr+fIhHXPf+9K0wUqJ8oc54arIHLyMtT6gZex07AN5BvHli
	 XnMkjmAJ5FgEEKblyKHdJ1JmV5WOHQMs4K4c1iRx7NdAerKfEPNo1dArX6jC3ux2uU
	 oS6KECww930Ab6o93ZjKDROlXGq2azzKOJojGVBU+dwyNqYNH7otdszXpNJEHUvxN+
	 rD34yMyyn3gElmM4Gl23u/TZJq+OgMud9MSmNxAV6pgr/qnLl3QG+j6VRTdIw844I9
	 DyWdDVDDFuCag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B7E9D3E1
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021443361.31238.8367155108875274476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1001e83c66e6962785af130d776276c04b35b2909eba7754f33581ac050f315f
Date: Wed, 04 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770214433
