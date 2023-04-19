Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F133C17
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD045C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681905845;
	bh=78Xy+JtS7jszUARGF/eo6Nfgm/y/52VqzDlx06PtQq8=;
	h=To:Subject:From:Date:From;
	b=UdPo3E0u4JlV9iQuls6C392vVxs2hiRLJZuyI8oDicL/Yv1mB4W6tFj0ntDBybGDN
	 p/2oJ7zkt2wD0Gr+5PTnayUEgy+++MWnQmTO/WZC3H/m/yirR69p/OC1tHkC548EyI
	 RFB+ve91X5IQW6SvnhYGbLj5KqBYc9P0tyOdK6zZsoBnv3nF42ZIXPMtY/x23If5XF
	 51z22NcQEz6Na/lijRT2W4QSoIMTtpwRqWpYzumbfRZ0Sc91D4OZE+rykroRrKJZ6N
	 IaXbylr5c1+A3/8LMFR24c/M3zfWJQ7A0SbCdvpG6TW4pty9+zUZKMEAHjPWCxpMVE
	 pJRPB1m4C9+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C499EC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190584579.26022.1204205335415602108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d568478dbae1f5481b5a402953a7e6fcbef268784645a0dd33a2572de6dd8c
Date: Wed, 19 Apr 2023 12:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681905845
