Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08F963B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B6F9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672035087;
	bh=GlRoEQphuI0KEsK5ZC6F3/oDnABwEaKZHyl8Vy+xV6o=;
	h=To:Subject:From:Date:From;
	b=jVAC7zqVNgoA/aleRcNepPK5uyACHuJwBNBlinDcyssU8Du/+0JTF0RDiqE8By0oI
	 PIvxkwqc5XYZIU9jTOz4EXvzh3ShnvUeskKwPy7tP4bYKxEp29U5HFDNwGHZISpjb2
	 nrZEOatd7tKuauVpudCWXNhCWMFtLs42R0qZePOMWX+rFOZKO9HkzyPUBtCpRcYaWl
	 WpaWuXJ5Zl+gVbJtNZNygj+1oG8SIvx/MgSfGjrHnvL2QG7x5eYSaxMMYJvnEcP1FS
	 GNf0emJK9UpT2v66gXZmS5Cfg2+kTFLMItMMKJcWneLCqFI2zdAJz/vKrAnEWxlpvY
	 omnzHPkYSFgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AE8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203508746.19680.3214052310808545185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f54ba2ae8c89e752ea06a39d05ca051b2e554a4dc1883a769dfc976ed2bc005
Date: Mon, 26 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672035087
