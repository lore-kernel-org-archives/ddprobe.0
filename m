Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC3530BBA6
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761893994; cv=none; b=oFyAwke4bIqy1QwPNmzNJsyj57kC6e33dYDxjtAHb7gOKvDxUvQHDBr8Y6uuvdgwa3Ls/6wGpOYmngdRxjZCc5kBk8yE5TWTtSiRwisgv53g5Ab3IQNJ0kZuaQ2lfrw/IkA7lJKe6rmseCvT2nrCKkBPIgByv6Vo2gkjJYVd3H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761893994; c=relaxed/simple;
	bh=/HTX2FLXBVexc5VSIB4noAs/dtmJxdQmygQbG2JaSH8=;
	h=To:Subject:From:Message-Id:Date; b=UmTsXxEaFvzQOSXow0NhVU493p76WyOiScOtQZkA1+QZmchH5wvP2FEyA8w8U4RfSUROy+NKPpPMCrB+ZbzWKJx0YkmcajZw13AcX72BWYk7XvxKe+ubTBdC1fQWCSfLyRfuM4drqSrb2gARl6OqfYmn3MG4AUN2YECfPH6jVR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ8onWdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ8onWdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761893993;
	bh=/HTX2FLXBVexc5VSIB4noAs/dtmJxdQmygQbG2JaSH8=;
	h=To:Subject:From:Date:From;
	b=NQ8onWdHcbphMGOVv7GVSO4E6ARiJ5fbsd7EmZcYPVJwbg+mwU5q2+mOvUnm0kzry
	 jBEBDDeHw5+q3+kh9bWoYV9ltV3mcKm5ocl477j5ZPF1JICTsv7kC1k7G5TbPl0KG4
	 2ZphlAlrMkio38slNoB3GcaWZyzMnibsoWvJotxYrHe2HvaJsL2qlw8J8IB9AZJVdf
	 LkhYu5tcoP11e4G7LFw93YwCqANxxzeYQ7gnkuFp0lVI+A6yghLIbjOuoRhyupFfxU
	 rnYTCXVnC7vLI6aSHt09hzubATWcXByu3Kav2V5uQxtE9ldSkSJ2srQ9BipJ4Pt4Ev
	 tWpzSzBvAhOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93049CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189399359.3182.8874461406022162321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3ecb9baa1399be362f28d441d305d44376d305ce21b2fb5a2ca5c55a0ef8ee
Date: Fri, 31 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761893993
