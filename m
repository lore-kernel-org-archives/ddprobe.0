Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65772A94D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F38C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688722628;
	bh=3viuDOBaLy2eEvqkYedbzE/4UkzK+CSrikeAuYMU92M=;
	h=To:Subject:From:Date:From;
	b=C8DpxUEfV5dvvzszPipzjria6NXGfZI3Dv9rIpv76DNdzBRGo+mAtIRaMkpYvsgiN
	 bdB5gdr43WapMPddgxjPdxPkpTjbMQ4HRDeLeQl8hs1/hapJaddl+4R4aZdKFo3Xj6
	 2NLcTY1dwb38tM0Aiy0rX6KyxttqPfTiQMHgK7x7d/Zu/QYRKjk13qK76f/qw+7sDj
	 /y6jBInhl5cOrMlA3Hi16Iyg3Odx03FdH3rwHYmth33QZj9cD63CYLodMx6+ypI6ZD
	 ui1zp4FMwPG6jsJQFXdTcvouQuj7K+TpGzQ0v02OIT7IqnBwa+CDJBnaOFC9uKfYXT
	 2hheWvRjkQ0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0410EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872262871.13403.10454788569180773496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976ac12d4956c607a02f46f91a28c2d8471f6bfc6580b7cc9e6621a19d7d135f
Date: Fri, 07 Jul 2023 09:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688722628
