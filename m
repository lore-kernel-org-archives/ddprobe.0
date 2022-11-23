Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE0F256C
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F4EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669212054;
	bh=juT+d1m5cEACnTcYJKtyzgzkk6nc4leDThzZOQ4F+mo=;
	h=To:Subject:From:Date:From;
	b=s7WD+PvRSwHz51imjHGNnBzxtaq4SQTGaXk/JZApuMt7Zk66zwdmGyKNVXQRuGuCY
	 VXtei4NQGw2oyhFR6YhcmQCdI+JqK+HaxYLXF9PgFzQh3mgkm/sVsCIXQVqJnBr156
	 iXQJQCOxpD5UnStDLwJm/Qrvh2c1kdqCwc65i38ySFWOvoWPJXaxvreXp0qZp0+rGh
	 pLs/bJpaXOXZdjBlYUEW5khyokiB8uTOQvukfQiKS3IGRXgH5ZzBZZkUAjMjYOMmL8
	 ouNAWJtFVRAv0K79CTpwd1kHR3pVStDG/gWwibf6rdyitxZ0GT2CLwOHbnlz0+RTWC
	 pRUPFOI1amIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3E1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921205436.8653.6903871798249280045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4181ff253c32c1a33829c0c05ce5a824234b16f7c2668d07e4ef5cd3e886cdb1
Date: Wed, 23 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669212054
