Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0D19F10A
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748537995; cv=none; b=nhJBtk+yOGlJdlWJl2w7BIl7rvL3RR00GVbTBWSsCii4lycbMkuZ/tYLxAAQi1wIVdXEddHonVOxnWuRBHMkqjZYKHRb91DU1+etVjXgbIuzpkchf5tA1AXEkNwt1cMYvk6HUu2pJN1P/eL5ZlpqCc7piwkYRHNIgiK2DvdhBr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748537995; c=relaxed/simple;
	bh=MCJ6rKhmq9S1FL65xGVQ6b6aO/ysLm5neMgXx96CBDk=;
	h=To:Subject:From:Message-Id:Date; b=XcuIPtTA03Zq1lAUh1aVXpbH2zMN54eqZfj7Hyc2pn3Z8dXXXL1Qm2PvV8EyzGjKvjnYxPqlaxL+faaguEGOcmlOzVpPGLX8ulHdxrLiFbz/ZWgbDHdv5l3weyxPfTOdBy47uks7eOdguIDLw+iHCwy4iy68gCvQEwp+ZzIZezw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=solzpnzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="solzpnzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748537993;
	bh=MCJ6rKhmq9S1FL65xGVQ6b6aO/ysLm5neMgXx96CBDk=;
	h=To:Subject:From:Date:From;
	b=solzpnzhfqEf6bT3W+7reb4cJLDmDFEQFR7X0C3TlKakY4+7QjvzzWwlEYk6WvYFm
	 VsxCz/v4zvDEFQ23uIQgQ987sPHkbOzgBjOHyAVRZsLqYXJVJTLAs84+sEJ3coHmox
	 sjxsoyMN6i+UZlGGaQL0CcWxFvwDsofsERBcj/jNQPV3ZbC3x3qMl3q5KL1KYim0wm
	 v0M0MR3c0nDvJbqQ9JMFBZVr6MCGdJLcCfSoMMym7jR0+lfINY2DzbANftFw+l8CR9
	 G4FePSqtL3jzgoU2tvirha1Ntt1tVHZybfk5M+5cluoa0zt+/VqQvbDg+YJVDQs5RP
	 8acX5iH2jnZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCF7C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853799357.4385.13583844219832114075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879687b4db07e252412fed61a746c452feb15169205080b10a4e07d612b4e5f8
Date: Thu, 29 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748537993
