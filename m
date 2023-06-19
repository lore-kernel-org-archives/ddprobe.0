Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A04E110F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C947FC433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687143008;
	bh=BEu6MjrdUNfd+lDKi+cS7qj3nqYstGRnPZPDvYkxcbI=;
	h=To:Subject:From:Date:From;
	b=sPZLCpFY2pYcpLdXgmCwQ8EZaHP+I9YFqFEHuyl/dg3e9Lopb6wB9x8AhnDAT0E34
	 ucrwGq1LbdkPhDaoeC/4RBtEWmaRRpXpsbj1aV42nqcpJtg1cYnES80wXpU+Dli4mi
	 3FrGSU5AJMLNyBx+2UMMbydNdZcytBUS+1CNye/AQ1GlbIlYpCjE2+qZ0optmWSaxQ
	 wyz/s4o5g5qNkHw5HbWtm6gx5hWOyn7go6K+ZnA7IH2qsGbiRK1vXdcl6HWs+bLopM
	 g0hyfwuqNl3Ky+XgyQHZfUBeZ9vD5c2+3YKSfCAMSigL+zvKb12uCap0i2nBPlo5gN
	 Ph9i4ZmH+P3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A4EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168714300869.22018.5266446179910321886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a85d1fe95f5a9a3d3fbeb56a9333392e1724b50b5eaa9d2d77323387fd0db5
Date: Mon, 19 Jun 2023 02:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687143008
