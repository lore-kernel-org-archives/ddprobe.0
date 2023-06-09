Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE4319539
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED14BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686326766;
	bh=UrVZG93YBJxNw8UtWo9qwhDn//g5RClA9wBSOENaH4U=;
	h=To:Subject:From:Date:From;
	b=t7DjqVhGPkLCo8s+4kwRrSSddiV3KucDC2YQmEp0xiT/mHFjRb3ugZZiSPr71Z6NH
	 5DQUutUgOJ6vfZ5524ER4zH12c0puCWuTm5hfkX9XdpWKZSYXR7d4ianeqFuMUCRPz
	 oPm6Xz5bHfrRMBUEN0X+aBA5UQ3P4CMjFy2Pdq3Ghz8j0JfQK7F+slnFZftBkTilYt
	 dzJCKlOWnzMT4w9DhVHJ9LHRbcQUl7gBu9G58gIRfSoyL20ZPRk4xPxXVgFIGEfgsC
	 y++7RrTQTTUMZfNaOO+JJpeB9VSVGDBzZTnySn0iikRrx/pD3gbLwGKUz6nfdptmKT
	 yLCr7ODs3UDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52EEC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 16:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632676579.18450.7889666743797329541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee38cea68ef166a1f5b2fbd7e0d7f81d623bee90408adf55987b4f599317790d
Date: Fri, 09 Jun 2023 16:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686326765
