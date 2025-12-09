Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BD3175A5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765267974; cv=none; b=c5CQVPjmbQJk9DXpvhWFrnenIvZDWpi4/CIAU3ezsD5oOCkxaYh+RXGDnwHVDlXxXG8zmzXn9MIQiaxLpLZPkkl5ilcVPFF/JgMTWYh5GF17N4loh0khE1P78v1OfYPxkSmnVhTTFHnjFHyWDCgbWbhEM//IsldrG4GaH49Z0i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765267974; c=relaxed/simple;
	bh=ACU5owk21HwagXLWkE7tHAli5TqR1wM0XFWI36edj4U=;
	h=To:Subject:From:Message-Id:Date; b=LVWDWw3OUU7viXiowclJViBWgKDLmzNX3gUT076AMwOM6cPEWG4L1pni3k05KWviPXXEozkXs7FFVLRdy8MZ7NfJVV9Ku6fw3wCm4yIIqMtszBhAtRCaX/NoPwrafQfgQkoL9Tp7GTuUfl3k58J1mfoOifXT8jTDlQXDR8MUZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIzzn3oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIzzn3oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765267973;
	bh=ACU5owk21HwagXLWkE7tHAli5TqR1wM0XFWI36edj4U=;
	h=To:Subject:From:Date:From;
	b=FIzzn3oY8sAbDIsaN2AshFoQriSHByrA0Hq1UBFt+Lj9ZUevVY+O4xHXjJkl2mW7Z
	 mEAcJHBVzVpT7GspTRGkgP2d00WGTul/iALtlQPUQFKidFIfOIccgcVVhTAISMADHK
	 Vm1DxoR5jrxJE9qVDvoADx6MHkZRki33zAQp6+yk/Fk3ss6IfSa0DHjlwAb15JnOUo
	 NhX4n704TDDBpUF7kgVifmSecfftOcNvlLdOpj6OArrhfZHqk0iYkNHS1YJhLEGMeD
	 +Vdzhbc/q3m6QWInAuJgLYNSlXUfnkB2SMlY8zCCjH1yg7Yl7SsQZ/iANKQhk1ETSi
	 6eqw1F7oMJF6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A2D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526797358.4374.17137546176942742834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cde3492fe020a8822ccd890ab8339a17fdab08d21260c619cd46047822b38fb
Date: Tue, 09 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765267973
