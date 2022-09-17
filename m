Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C357639B
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7853AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663439453;
	bh=oyp67u3OAf6ZhAmDf4qSs+b+DAR22ggKHSVBtFDq730=;
	h=To:Subject:From:Date:From;
	b=IYCrRxxd9IdbGDenZbYj56qso6FS8SO1mwfoTqzpIw5/PBvJ5jD3WWRWB6j7I5iXC
	 ru68yoIvPI/866n6Nw9ongWzuq0UQFdVWCATN0DqkP9eP51rEftscpQpValUrt/ZX5
	 fh+Inb8/1XmGvplAmHL0rgU02yAv3OD+hr1TGxBpAo30Wcj1aDi3RLAdRLkh2jw/5q
	 bcxRFDQDVYEWSU8FA2lSOZrNPWoOHHp7No25NLGuLJUHmXz75en/ykV4MfC2htUyor
	 fL8YYDscu8QHneNsDaAAhtKA54MmyCdk9OsvU2vT2Km/Agm+UUUsOhGEfrP1oOZ0Wv
	 OGx3PoymvQkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580C3C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343945335.16844.7321363583571803388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4f16b654c1a1777cbc100e1cb50119d80e7653fe8dbbf07cfaa4c5bac2be74
Date: Sat, 17 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663439453
