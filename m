Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5132537E9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742864394; cv=none; b=oXoexazBjMJRjbGOW5jhAS8CpSaza2vcrG3AsdpL1KLIKtxuhAASvfjxQ7pHQ5vWNuqUF2IaiTuRx+eItFmE+ptuNZjOstkMDfni5wjPmyKQzvpovDzvda560IWwGHszAhivlqV5n9euGohkJT1DQYu3hRsVPP9VQ/FaQ+JTabc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742864394; c=relaxed/simple;
	bh=Gp8w5Js7E6SiWdu1Q+Db+EaDv66lmUFpAJm7QOfgTpU=;
	h=To:Subject:From:Message-Id:Date; b=HWCITZIxkNJ9ODnL9X1x4h9qNf2nUjXpR1aEftLHx5+f7kufA4RnaRJvnGxcRb5hWanZ5oHB0P29kWPEXK0ZbpblsZI1zwmBFRJOVH9TKw6LMp5dp254YMUddwt/kkWMlkbDYr5gHNCG7fpZipflxtWDTS68zZrEMm+KL/sUc1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKHPxDw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKHPxDw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4982C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742864393;
	bh=Gp8w5Js7E6SiWdu1Q+Db+EaDv66lmUFpAJm7QOfgTpU=;
	h=To:Subject:From:Date:From;
	b=bKHPxDw9SLMDT3D43qVZ42NKfYRnxI2iRmniupul20L0v1RmIZvNxBHnLniBMN24U
	 BxK3TUjIfqmllwgw7p3JVpv2zXToh0qFKX75xpBZvl/O8siyVf6L0Yyn/+Aj4TWDVs
	 LorjJCwohi+2fHW7rTxz8K01q7Yy0Z6MrA52hRtREcfnBw0bTKCcb2XXXsbR0dZCeI
	 XoXFpMIQP5upTihKF955kK2kCw1T3oVQtp34NwI7YlYnbDJSAQVq3yR5369Gsv1FRU
	 Dm3hC4/UMeJ6G0NMTA/zmWvBOVHHWnmIcy6rkjimSDcSRY/QK5adKxJfN6j2Pg2gFG
	 oAc8bOdwKU+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8C7C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286439367.14099.7579332965773341718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65e94e5a3a8aa15d73f2141da37830b83884ffc9b829a63aa3358ca83a50154
Date: Tue, 25 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742864393
