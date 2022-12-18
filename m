Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3D37E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671387087;
	bh=5sth7ZhJAQxFTaB+IIja87y74vi0hmb+Qxsc9DRmVkE=;
	h=To:Subject:From:Date:From;
	b=omRhjcxw46tHk+xvIAe1A23Rgl3URuxCID/eKdwPOgP9hov7GbwvjY8L5unxqebrU
	 uPskDh6S2qQ3cV2d0VjKzsKBd6/urPHLJonvnYyHzKJbwENFZvSzR3DLONsSnCk0lX
	 mmc+RvfwW0VjXSQ3KvTCQTmoT+xGypkA0tXlugrBGygL94r3KiQtOW+9HY342TZmYZ
	 nHZbtaJYoUYkyUY5JrMu8HJ4yHZczzOU5q0ofJUeKDFOJ4I9XW//K+B7HOieKr0laU
	 1qLJs+zHV79W3GD/ZJPZG0X8fIei/nmbF2Fj5bLYI/+LdJssUT1sAavAlHEv5NQKEb
	 dQEiFnOYLVH9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DEBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138708739.14308.18373196454532543346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4955f8024a2dfb15439f128a62f71b15daca912868c746c9e84270ef18c4527
Date: Sun, 18 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671387087
