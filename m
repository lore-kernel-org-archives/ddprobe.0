Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C78B43E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6002C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673394087;
	bh=rRC2i7aRyjLaHDwO1xsyy0fwiF5bgnma5c6l7N6hcIQ=;
	h=To:Subject:From:Date:From;
	b=Z5+L/arG5BjiGYLdgQM30IR/I35BBaX7SqHO57ASCQDlzDFGGmK1ZL4ov/PD+dhUy
	 DybYNbq/xYzZJAovTlxifWRaWGkLWbsiZmWDkPR5Dl3OL4s5RhatveMbpU4LL+w1mN
	 pWJpzA/T0l1QTxg0sDYG+kPaHjBKMuWG8ub7QjKB2Ho8mSdpOIs7VY8s4na/x5XfL9
	 XhgcA7rlxcaawf6dgDgMxC06NXOgWzLaJp9UVJeuYrHktvuCvwn/NRe+SaNNwmSZwD
	 KyTs2y+YoYsco15kiXu9YnPEtuxxREL4Bhxa2Z9V+2KPkcMLZiD7RyWSojP5AWWTI4
	 g138CYozPhPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7D4C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167339408775.30899.17620891202114963756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde262142a10f029987f17f5ed24fc8179360bdfe21a21b0a3bd3e3fe3c21870
Date: Tue, 10 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673394087
