Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7156373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800D6C433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665809453;
	bh=tcy0zQOdYw/ktbdEcLCed8z05WWJqIFDWJDNaLpx+Zw=;
	h=To:Subject:From:Date:From;
	b=r28+GSwVmiIsgmk9FA8V+GJ673aHzJSCZx8cj3NOUflU7/YyWNTCJZ2iBhGPQ31ZK
	 2Y4tjU6nkzj0a7xMKHUBTYAhKTSQdLhD9qbSpSKRN5uY+fryAfHdYjhR5GqCOdDB0q
	 NvBgLkmDuMkiZDSPHAjbUy7rrXeTv3Kk4TwI3CbPJH8nOC0PqwJd6VxvFI9szozPKE
	 aoA/R1IUmPiQeGw02JUsvSkKWhmzENGHe4yIfUEg6fONe4iv3xGMPl4v9+bHosHLuM
	 /G9O+TPlScVKFbkHRCbV+aZMjPPXtGGCeOQLvRcZdKeQF31SF0v8eIhYnU3TlpjBLG
	 esvJ1A0c8mC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AD9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580945337.19190.12014898328775523704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9097a747038cb5e4d758e300961e18505f98896e101f0e2d482b80677320e741
Date: Sat, 15 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665809453
