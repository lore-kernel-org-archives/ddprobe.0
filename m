Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0679A21ADC5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756667994; cv=none; b=Qe+oyIkt+fQT8kV5PTUI1x5ddp/3DSj090SmcH64TQHNdB4cMnGapbGev56MuNDcJt+ps1mTeJhijtUl5OrJSEMxlsJKUpjjmFvBEFI0g0WV5OdMGhVB/tPVP8Q6Xz+xn4VWIJiSidlwffoLeabi+x53pb42jn0L2JlazhUNroo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756667994; c=relaxed/simple;
	bh=6BP6ifskCZkCnUYdQ13CMpWy7d2xluXqAh6VbKKbM2Q=;
	h=To:Subject:From:Message-Id:Date; b=B5OQp6pyNk+/6BjHRno9IRIapOM1lR8osX7snsaxqsdBFcX/3UDa1WWM5F9nIHzG/Z2MwuR5w+h0t7R91abTaFxsz1tDrzDwVoQQtZjRZDBdlaSRGpCeK/e/n82d0xms0L4AEf6nH9G7X1w5gT7wr8j8EvocvuRSJnR/2wYeZcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOBTGIah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOBTGIah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0859C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756667993;
	bh=6BP6ifskCZkCnUYdQ13CMpWy7d2xluXqAh6VbKKbM2Q=;
	h=To:Subject:From:Date:From;
	b=mOBTGIahbM8lM3VbO6LmolhYFldEs3yxWxMBibMrImm+7Qmsr6HdnotbdUpZ2L7ZM
	 T2hsP9Isq/FDnXj3lfw+7cT3yA4j0xIS6sp30706WUZoufhxo0Hu/sQcei7RGq1hrC
	 4aCKmTwWF9Ue2HgjpA8SpHTAfXLztOJG6IN5FaPnaRuLwwkNH134aqyV2RURW87xGP
	 VNdDo7c/B3mA5gOjcCJ3J5OI/o2mXa23xRlY+F/72uTU6z/OoUBX7xHpLHW1Y3QYZk
	 tckUEb7JVMSErkMPyuYkgZObK/sJGJa47V+vS01CJbRZFX7GiPw70AUXpOz2kNx4D8
	 kZW5yS1/lrUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEF0CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666799357.21135.9831321805417808784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9acb1ea1ae857cb31df5f584338d647fde7e74327ef1ae0490ec331c070884
Date: Sun, 31 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756667993
