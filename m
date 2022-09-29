Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C881F53B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72525C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664481053;
	bh=h+y/T5JfsT2rDEMt+UR+h7NT0ojvzBBoAymcWZzn92k=;
	h=To:Subject:From:Date:From;
	b=cPaAkyFCVdyYXO8XnHicuB65X8lHP9QPrZgVYLT6/lUeh0u8VDKECKG9y1qA7szEp
	 huuTm+sV8JYvZ8RvKrlKGpn5mTp2gjJ2YU1wKwIi/6nRtqhhCG2yot/hz1Tnq+qf2U
	 cHNpS/INzQ4fnenoky81IZbodTuqYoJhCWie/Xm/QH6f5s85tW1xEMQJoT2R+IoEtn
	 kw2m3OMPrDA1WXWL8LmVPBHBgOWDAS7SyIlJtJLez85clYT832P8AgXgPr+zx0ZIXg
	 xStU9Fx7Akz8zjgEHkm9qTuGJxL4Uunar/UMgGd0aT1YcuuZbwq0nCO5VwM2e2KwTC
	 eYFQGj5a0HBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CEFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448105333.25393.2712257528651613354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9c8d8903747b830169e5a4b1236748223508de16caf444e070c06edf300642
Date: Thu, 29 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664481053
