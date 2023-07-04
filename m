Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E12A79CC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D009EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688501768;
	bh=r8VYTuuZUggWZlwuB+phZRwTYN6xXupob45I9l7FqjQ=;
	h=To:Subject:From:Date:From;
	b=WcqRxGMjA6pCNCRyQA6YltnAe1+5CWVl6IQad39yAxyqu0EDjt4S53WLGDc4M17Qf
	 NtOSdyH1ZinYu7FoAvC1rT5ihjk0+8ri/+AaJ2X103cRQG2H0GIhBX1JSW+vvDAam2
	 D498rMNQk15lPLA02CFH8dUWAdWCN4iHVLmvTvc8u9Q9YATYr2JVKaFPR50fAKgdeT
	 Do9NZyknfDoYIIWWplBzJodUS2EpdlLcWTi0xO23YVr9DJDKp8tuS+RvsLEj3Uw1kt
	 sYap7CONl5tbJT8d1sMjcmclk1RpP2CQwDc80H5vI68UjGdgtvmRMcp3qtoGJeQLJd
	 YiG1TkYMcOrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E19EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850176870.10357.4223969965403739753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9c59128a0a30a1d114e9d064257c3d75bea0921eedb58dd3db4f9ddc55f783
Date: Tue, 04 Jul 2023 20:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688501768
