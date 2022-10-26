Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC9D7B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E0EC433B5
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666769453;
	bh=I4QHH3SlYChZ6CBfsY8FB1XifsjJg2Ch8McUBf8W/nU=;
	h=To:Subject:From:Date:From;
	b=i9/0uH+LUgdbFWPDJ9/F9berHKdk+lTywCcRHJtdJkfQojIre42Cyqjnn5LwPRRHz
	 P1Pm2IDW9+MwdZR1yDUEopKf2G1DBwrW/qRNjHpyjVCtzRgETEDloyD1iZEsLOe+E6
	 c3EnaWzuvbVhcEpt2ukEciINUUJ7WII9TYp6YRoHxOO7eSkpEI8UQSeGxh3WilYgvy
	 YyH30xamSTpnlfTJDfKUmVLEE4x/aDvl3zM+Oi+7pVNZox0RDPAyP/QLjQueSOksbJ
	 M1ErSFuZI7U6rbHV1ZOMIlXDMz9Vc1Y3wcdcSwXezo8did49d+fskcVFfXHLQg1MKa
	 bjquU4tR83LXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57037C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676945332.1075.16965452686785860521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13cfa10ba48eea0d57a53d811f87f83c71cdccfe3770ce377b0dbf8affb563f
Date: Wed, 26 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666769453
