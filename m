Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381A323D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C12C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682594465;
	bh=D90QyyS9+x3SecjqS+ZCtlxZiGHyyaXlFX0qp9gHt0Y=;
	h=To:Subject:From:Date:From;
	b=JjIacnwema+tbOFI07R03at58z/xw7/lJND6+ZUNOY/bBSO5qOc1HFecy536CytaR
	 hrzPCw9AhbXi46KOIFw5mSKFCLhi8U+tIMaPu8RC9qfZbFBrVhQxriNaDqYKOtWaTa
	 hsqKMJATmqXJoVbWZPtBE1eBCLricN1t0+P9CINia32fSsny+ybgX390z3oqwmmmI5
	 T1qZJVBiBL8sPMzMwi7sFxhyi+WBQuH1oRY3hp5LyFMKXOXfX49srk/t3C7KwiWyvC
	 TrScC3NSRdYbEiPSRmzjXkitcqR3F2tp5Fe3Flmu3uAU5jDgueoQb7oQhfyBX+UPSO
	 rOi+hbbOXFHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9749C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168259446575.26015.3376783256377930066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283edcddb9986c690317cc22e3af8a803711400994424f490da114283c026fc3
Date: Thu, 27 Apr 2023 11:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682594465
