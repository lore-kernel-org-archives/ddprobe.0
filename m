Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0822430DEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695094; cv=none; b=pz53d6uC2r6U0S6mGmY3j/ueLD8gsxo0OMRhKVClRRWgeU2rgzK+Q9bXR4oM+WWm8MGuvTKytm8cnjlNOyo2FD9M58QtvFRSdXnDf+jsDoRywbByIUmuxjXHAT4kY/6NgZO4z51st3Hn61n2ITorclAIhK4hQugPFQp/hHq4bUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695094; c=relaxed/simple;
	bh=1VjW5ApP0csVWuct6NJKSm8mS3pXPraTibH7jvr4HO8=;
	h=To:Subject:From:Message-Id:Date; b=Nm7qvQ+Se9W4sVAYl4iLoWPb/yXGSNpv1OnzOI5XCqiCrETJNAUwpuJ8BJP7hlkgSgAVigHCBkRKTIu2B8xiF0uDTEMdidnfpzXIQ+cKqqPl6FFSq5eeMb6bzfv/Jk77t8jhht6E89PkFDbPkuUoH3QWnYnO79j4Hg6hCTBrj3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK66lR8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK66lR8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F527C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773695093;
	bh=1VjW5ApP0csVWuct6NJKSm8mS3pXPraTibH7jvr4HO8=;
	h=To:Subject:From:Date:From;
	b=bK66lR8bUvX9XxtIdnli1fMHqiB+7giMd0XpZoQwqo0nLeGkpg6UC4fL4gHlPWJ+G
	 Gpe2Ysxk4GOQiNO9vu+c+kugEG0Z7zFtFbw/QYCVqbj0/aMdTi/rZFc4GmqgIxjmZi
	 uvsQWUTSa5ze1LWOn5WeLbNCVkt+Yf0hEfA4Uk+B+wpIRI/zBMoz4ADVE2nnjErdDm
	 1YGBuGe7lIMNEy94YWquJ45O8Kqm/IBUv2dW/zNNZ0BtXc3fiXg37aEFVpOHfJr538
	 NXaA/A5K6AYAy82v8MxJ63vm3VuVCOZ6BLn+xhPZoQlcSVY5m7v01Ex2h+D1hVM2Ov
	 Oa6a+YFP5xH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BFF53D9C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369509358.31965.4739922953280754864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4e2e56a21235c8594f562adc040554be831267e4675ef837912a332af48da9
Date: Mon, 16 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773695093
