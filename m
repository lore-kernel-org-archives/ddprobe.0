Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89DA1A629
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEEDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668109254;
	bh=p0ZLdgw46zgySSd9E5WfXD68keQTqLIS7Apb/bf7xeA=;
	h=To:Subject:From:Date:From;
	b=Eg8YZ366TFGFp5hbiWn935UgjVoD8v3mVPhmrJiLs9b8WuWCTv1W48Q24m5N9k3E0
	 TqGZM371ntuKJ53h3RBTD+DL/e1G1s0X0kdkWOXF3OUQskuz+gms2VCPKawLOyo0go
	 C97D6UeOkKfY3XfZz4ojM4OVCsx8jrg9QzlGHnLTiGmxvKLLTNAKJlCYn/8vDfjpsf
	 YNz0A7xjCYeeURy/X19MW3YeKcrTaNeaIz/ooVEYz3T5oCtX2CjZ8F3camLxwGGWFP
	 I/ce8daoLy3lk0vqc7dfRTqIy7HD4sU404kVG9Vc6LHIZwZIo6KCTEJ1WAy5Ag1ERi
	 vS5r4fhcC9GbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5688DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810925434.1302.28321971690660628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc8d1f682f519ba4a71937ee9990adbac9e310d08969655db99e485162580c2
Date: Thu, 10 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668109254
