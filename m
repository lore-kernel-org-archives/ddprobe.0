Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A4C7FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82894C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661995253;
	bh=nFNyfQTwHuCL4ONARiEUbshjo0jVV3wm+P6ctzzrMF0=;
	h=To:Subject:From:Date:From;
	b=VQYJxqrk84olyOflIqhshaTM1spMajwzglvrkv4o9RWC9KBpt4TB8R7YS2BQvLEH4
	 EgfxPgj4aDAQ4lZjdot/Xk58Ep9Ag9psaKUchaDkOQB8z04HTBHxL3cND6iOO2KCsS
	 fUb1gdQ9KDVI+qyaEAgY8v5fmQj/siBMtPopLVvle41tCV0Zqo0ZPGjBvn6v5MYQwc
	 KGl7MQoMUbBeXJJTiEFMcqrBFvE+FZBDnv0Cy9RPJ5wHilnh+zz5wDWiGRG3AXfUp+
	 7UxDltD6nnD57353UYj7S7nzQxv+pNdA5BsEURrQPP1VlPMBlLrikKqMkui+fAwTPH
	 JtaQjAYdOC+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B7DECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199525340.20623.7052433818484600585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0197c0121ad5af220a37f8d380beb8f4aa95fefcc50178133b176953c5124c35
Date: Thu, 01 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661995253
