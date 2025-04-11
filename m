Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A90F221FCC
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744394394; cv=none; b=uMQFs1grnkL8Me5KW4k6w3qKMGmsoG8hXGCMA2SnsY+sJ2cEk4wUnWKwxF6G2AJxN9YN2CT2/FxZFN2wavDLHOSozFASkhV0kA/Jmb6I7AM1SCsPitCbs8R3s/nIy4OHVeEO6CgfxD/GKF54P8HSnu8X80e0fhSR5nqJZZk492U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744394394; c=relaxed/simple;
	bh=LvIBNRN5umqM6ZNFTR2KV06+H8GloglJnRPJeRMBpzQ=;
	h=To:Subject:From:Message-Id:Date; b=gw+tLo7njF4za3AkW9YGUdXvfB/34ui2YHQmxOA5CmrXerv/GF1oLMk3uJGawum5r6O1i5Vncnd/PiF0zDrj+Kl0xAAeqH48Dw+WjNsOIpxqA6LKJkeXSdKsyfWvhsn1ONdRxcZqdg0/Cq2TBdhdxVWeoSu2beqtqx7B8X3NAVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm8eX1/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm8eX1/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7EEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744394393;
	bh=LvIBNRN5umqM6ZNFTR2KV06+H8GloglJnRPJeRMBpzQ=;
	h=To:Subject:From:Date:From;
	b=pm8eX1/PXpPtE5fPgFHKTRS9QIf0EP2Wl4XrWgeKDRdDfcJOObEAAWCML1oq9T8un
	 pNRhJRGv4FG0u+PTeA9A1nf/WHiiHCJ4wdNk1+A848ZLEpyhtV90zFbbqVlti8LTTc
	 NNK++XiPO4VDwl8kBM8i3GY0BLeP7yOaxyHwCVXbk+2GiAxf4YFi0hsUTj0/lgAoXs
	 Vk/amDYsCeEKC0f2QZf9RwF7qSxpUmkbEYgFeupasyUKqhht/ZVyKnQDp/H6Utgq2y
	 ulxHUP60EwBSUrJo10isCs3xjFZwlhcY73n48mkZ4NZH242SDFuekM/C4RVLulx5mR
	 kRJp/4mARjlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CEC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439439358.15962.7964055207447008416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903d247ce81eb0f354ecfabd0a452fcc39f7c65602ed2dd31b342c45970131d4
Date: Fri, 11 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744394393
