Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A6749C
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9mycbog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC015C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697384228;
	bh=Rz5VROPHvQktffT1IEWQf5C3bT5MmAT/jgpEPwmhDHY=;
	h=To:Subject:From:Date:From;
	b=o9mycbogIjQJEN+Lxhm4MURw2PLTBujrbLSJLNqaKkfvQNIIOpgFq0XdVih8iMX4e
	 kKzE5HFzuUF+hXbYuEYWFcCndyLPiIj17XKgI0hDDI4dFyI1zNJiMurfab2A1DBcis
	 uAzKAC3WsbAEL8zGvixJQHjsfgZQsXpGfjqXtpNVk/lbz1WFMu/x86qC4SyNt/NN+z
	 5lCB4RgqqP8Xpb5XLfqzo1XiETHcnUZT0P4iP9dGaX6e8YGx/HcTL31oDyoMF+RlnD
	 e9T0UpU/roQGFKsx7ALaFguvnytw7GSDa1RPby4crlzC5i4t/fTSjGocH+Nlqr2niL
	 gdqdq4d8iz2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF290CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738422867.32288.8583305469454758523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc89622c31767c18aa6bb16a4e964e2406087e38f1b2e62fac4057b3efd7758
Date: Sun, 15 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697384228
