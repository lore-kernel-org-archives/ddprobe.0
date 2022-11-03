Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA86BA31
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7193BC433D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667457654;
	bh=a0NEY3F2A8IuCqBeg5RtanMNp0Whofx/MZAU9idOOD8=;
	h=To:Subject:From:Date:From;
	b=Sb+7qvxLED2wovJTIFqe7qSVf/ZWsLkf1xTdijlZmuq49r1hsP74kmdiFnTjjXjXe
	 VEHKkB3Jz/0p8umjbBSyEWTYbQS9+fxdYvxwDiDLjORFcLj3sjZM6jiGd2VKB8dIlA
	 uquUG9A3WkNHtK9QIsQ5axiY2C2Y5cEH2LC0LgHlzF1dxvjpi64WCsvDaXvqVG2/Pb
	 vt0fzZwIUmHpNHpo8obsJ5QqohDYQF2QE3OZKhbKhYk8J6i73STgEVgGusl/RTZwxM
	 ozeNmr3I4rRW8obn636Ko1X/+a0hRNd1kY1EV42UO4SE+bSpiApv4+QEKo4KBmKskR
	 CZYoYc6MbiPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D0FC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745765432.11993.6279880623283176387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7992ad8bc0c585f9cc21e05f6b21b2da2f075b082c61eb4b0d6db283342adb
Date: Thu, 03 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667457654
