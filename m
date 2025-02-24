Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4B1E521
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740356934; cv=none; b=UMa1Ur4zQ9ewqLjX39gG9HiAp6Jb4wtat0366C0VOS6YA/6KdOC2xo0d/SxFCQ3z/Yle7vqSO+F7JCSAGCAaGfMrUh6xMrFfTqDc3Gh0H6xNP7MjPiZmz+pr5TRPmkX4p2+qqRCt1cClFnJwP6X8yxJuyxKMIqN9GbYupJyi1FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740356934; c=relaxed/simple;
	bh=MBPynuJfE6NNUr2JcCtlQFXokg/nU4KWNmmHfxVyNBE=;
	h=To:Subject:From:Message-Id:Date; b=DHWJ+K7o/eHMRs98fgYlJ24uSTedcWgtHNLAtnpUzmaeWi17gVjA5KGp/ekZ+QH8ovef2nOFzZZUbKyLmcd2MbdKfKhL0cu4ZXEyJoOs3T7uGuRnuZGGyOJ0uCCOk7Ed7d49eskk/51UokC++ROIgjK3pMZfcVRH75EslwQT3xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMTwbB6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMTwbB6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DCAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740356933;
	bh=MBPynuJfE6NNUr2JcCtlQFXokg/nU4KWNmmHfxVyNBE=;
	h=To:Subject:From:Date:From;
	b=mMTwbB6OfmvRlUGHA+X6EgveSbx+CPxLI6ir9c9DcyTY+R5XaCdv9KHDUb5MGpXL6
	 6OzgTYOZz2PC1BtSbaObI3oYnHSqMer3813Wtzyk5ag6djEDldvWczkcic4aT9+Ft8
	 ZrD6QuTkEbkyNhuI45xCQ3VOD04/PrvTyjfwix/oBOrxHDildf9rm6Z3pi99e+wfOU
	 pW+/bdHfdTSIgcWM2bt9a2BqK9fhSGtnuqpfvJYpuHj2c2qi4ZbOX2b7YZ1VLqBm1F
	 RINr3e5YVvkKVwhIblV5oTnej4FWyjn1jYAyO1bxc1H8V/yRFz8nbmfFmWf2wF6nRx
	 nIbkYKRg0LBiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92159C021B2
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174035693358.24499.5249183356569102916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769a56eafa62e465571281d70bfded964eb07167b3f9f5be2123ef0bf930c426
Date: Mon, 24 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740356933
