Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E436FBA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B91AC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672876287;
	bh=JRfMSsFdLid6JwjeyAkDp452FvUdhqJ1/8njJAivlmE=;
	h=To:Subject:From:Date:From;
	b=uD8ul3+zejKJI84w5Ww0GUwAt4fmiTqvjHSH4IDehPFYoT78kHbLupdEArQsnVWJb
	 Ryj8TLRcvfjWySm7udcWdfx6OvFwse0Bu7NWZtUrPfgZOlfFEUPU3zKlepKHDPfp7B
	 iI1ih9n69CBCdP6OXYNaui94f8mV7Nw521XvSZ8SiIDAGa06iTmALeJs4rCatqz7nC
	 Z5cxdnj/3w03sbSu3nzppMc10K7SyuznV8cY57P/9XUb58bIZEnTw/vTfox4/DOYx1
	 wRiggCzSzynMG/qv1Sj8Fv7z1dODY7uGloQheTytg3LDFgAIw5JGTOvr4TpYYK6vbY
	 RcR5V05gJOCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E99DC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287628741.15996.16257266396892873780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39af72da4b5b984ff9c969abbb5dd6c91df2deed6261d5e67d73a6a3ed6aa9d1
Date: Wed, 04 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672876287
