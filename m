Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6DE136F
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF2AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694930708;
	bh=ftPj1r3HeyUTFMSdoQXNODkL5HwzRtXfB2MY8iDORoA=;
	h=To:Subject:From:Date:From;
	b=ZYzEKd0G9ms7wnT6dXalWAZI9t8Je9i4LaspSePWxUAF35SPSbl1qh8tzHJ0hO7gL
	 XrigQ+0ZazbcaiGx4YpZUGRyBc/oeIjVtpKYok5vBOsSKRF1GJncvrlLTPABGL+OT2
	 FMEIKq0SbUnkhL/ts8M1m4srkV2Pd520CvDILq0JMLy8slBOoGHX1Iklvkvoi2wd7n
	 dMOxHdlxGijveVCNSlhYRpU3sN1J74YvS9U6MXPNmPr1cHYoZq9Md46Azt2r1dnwo8
	 JjuN5aAzIvZt4zKocPVmUWdu28LZpFy7vlMHHA5aWtkkY+nuIhYXCefJjxO+iIQLRW
	 fcOfI8Mp6N/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4012CD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169493070866.26707.18063488767002289730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04d9a55c192778ccb53cfc0b5b6638e74556fd13b5e751c168eee1ed14c799e
Date: Sun, 17 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694930708
