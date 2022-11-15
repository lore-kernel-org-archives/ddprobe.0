Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD8F3C2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73131C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668515454;
	bh=zvn9H+LQM5P33JOEPE0zDqV8eL1/BcCbfW+Bslgk1dA=;
	h=To:Subject:From:Date:From;
	b=n3KmB7vs/DeXeaQ6uS1gTnAfp5+R2vMr1msSTG1S1apCdN1yKM5b5CK2FHuM2mBvC
	 HHCe1ZrmtysuEhFsftbOKqa80IjqKaX13dq/LAfm3uWdZa2WF9pcYxTMRsJwOydGd3
	 AQOrahDWz5vm5whZyhDL4r3xWKzJsv4JStgy1HCfINkdev+ht3U9Qitexkb11pH2kY
	 KtTdgTIptSvkEpLe8yKs16CXEWy51mpeUmur+PAsPt5E6xUY81fm0jkHbgYQu1CQi7
	 GDilsRSJyAgUSQPTdZPBFll+/J7K8VqvaV67zQV3KkEiVUyBB2zn6WsUXwLgNgb5MA
	 /d3ObQcfPBj4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBE6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851545437.21297.13214178156603855791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0be2ecec8b7d73c2260db74aca428e166d55fbf1fee0f449d80ce522c4e7ba
Date: Tue, 15 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668515454
