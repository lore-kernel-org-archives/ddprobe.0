Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89C22F27
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C63C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671148887;
	bh=HoQRB3BJNJAEoiOGJImwlYGAUNrB7rzvxOqQkyewACQ=;
	h=To:Subject:From:Date:From;
	b=OLZ/756Z+BC0Qu3lrhcap8HvsQ0HuCMNGxU9r0Z/JbbiBg01xFPk6NgaqRXoGhk/i
	 semdjlCjuj7nzIKI/AkKif2ZTSTyQTt61qK27UzdJDkt50TKpCXn3E9N5lxKGSfjZG
	 Bep952y5QIFiC8RiLx/ZMSDC7NYG1Cj+k3Gc6EgTqDRSULkWoZGcDfBgJ0i7yK1wrV
	 9TKmVynryQ2G2AYcWwLK/iQP7+CiDDMXQLrwWWFSyDrLjGaOv5bmExCeqKqI13Tlek
	 lTGZwz7nUbRKSegzF+CN2YEyb1Ver+6DhjfXRsGgFFq5BSjvoh9XVsb2su9wQfZF2+
	 W2eMmw4o1E/xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB2FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114888742.21896.741890138110160806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6028f54884e9320dfe3949e9878ddcfaae49367561fb56732657ee022ce557ba
Date: Fri, 16 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671148887
