Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D0E2F5B
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 15:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05E4AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 15:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684337046;
	bh=Fd3HNXppzoG9xc1OUM2RAIOgEiKGyzsSoukekEa7nF0=;
	h=To:Subject:From:Date:From;
	b=OTyfZXQ4bdWO0oX7jpaNOdMh6omvWMWyLE8i0BmJNYM1+RBDdYr/ZmImnNS0vw4w1
	 UMgJboElP15lQroJNU4rj1Du8sleIeCe4mWSnjSAUdfw+T/RUfPyh8OgVkcU6yG32G
	 h4owvdXskAHYGcGqHkq5pesJ73nRS4QR+9dQ58VbB0liGyQQWKeCH8pvswjX3K9Odf
	 aVsd+XSIHQ2Udy2l0jZq935UC9H9Xjf36tkHzVJeWZP5lE1j4CETgl+Lf0w5lzfihL
	 UhamgURKU1mhPvYbm1bXiaX7SsWT2/SDBT8VuOs9Boe5xVh0TMxta29vTYSrbYgzor
	 y5ijm5qdyCWpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E160FC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 15:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168433704588.32130.12634021210035582370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a3598e82bf3aae10069f128fe411a5f5a6c7f335ebd513e43bb063e543de53
Date: Wed, 17 May 2023 15:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684337045
