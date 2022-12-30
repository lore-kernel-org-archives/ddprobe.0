Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0523646AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D77C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672434687;
	bh=oFoz+G2fLs5CFVNStAOf8yhaPCzaF86kYbeyBK6aPOo=;
	h=To:Subject:From:Date:From;
	b=Jz1YKRD4zgdV9Uo8K7DgwN37p0m/9oyLWYaIyE0PGvz6PvqhwClE3n7w+qNshxUX7
	 shy1WwYHJqY0RbVIUsfRa4CcEzSqZ9vdFxNSRTb8T06z2lQrMt+iD1D+OSo5u5DEMa
	 IZoOjLlqH6oCh35t2qElU5NHuq58jpOj+/srtVUky60AKcNXsfalJJyGBAyUw7pjh3
	 E9Of+W7gd0rXItEHgylSK/X1l3K9Vd6/sxWcgffLJGkc1ndXUUZcCx+FfuLJbhQCPU
	 0yjAv8Oj2u7PtFFcnIB0thfUGLr339UNKnAWEG0Cf0IexaAvKAd6A2u0ZE9uFiKIv8
	 5XemS7Si5Z1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BF1FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243468747.5417.13069956563055836767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2ee522707512034db380e9680c370f5f456bf51e9417d9b9eaff910fddd660
Date: Fri, 30 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672434687
