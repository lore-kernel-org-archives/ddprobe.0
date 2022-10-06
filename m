Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01CE2582
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B662C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665069053;
	bh=jdVxFJUonKSTVXRFYSf87Zco01bEPnrejmAJ6fAkcPA=;
	h=To:Subject:From:Date:From;
	b=K8nGVmIkk+gpSFIBywpR4yjJ6EZXl9Cm7KxjQhYk0K1A96SmO/ekpvM4uPGd4XosH
	 S28V7qJJrwSamLV2ukzR4k14O2yylgUtt+rMCCNuyHHqUAB39bxW4b9A+HYFHrtxag
	 dbFmOi96p5pYJR2KbhreobBkrtyZs7OzX5EFXbEEhJ8qw24vCUdoU7OZl8789ylTlg
	 7rsqFjypylqx/cfv7mRh50FS5oCjAyN/fbiInAFUySyfx3xuTJ5gY9SF0foXGtStxY
	 dSfHk7nLkFBskSqUjztO2ZeZxxx6DVdI+2haI6cgG+xtXE4+yEGm3jirK7nOOBzU0t
	 Z8ETrVzz/vY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6176EC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506905338.14118.6222022831842424080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088b2d79ad78bb352c51d28b09d969bf6561aa38082b2a1679f45cfabf1a3285
Date: Thu, 06 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665069053
