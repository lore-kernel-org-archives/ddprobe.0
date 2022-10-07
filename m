Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02407F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75227C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665120053;
	bh=BrIrnndL5dLR3E2k6idvK9Z9NxQJN1sCP+NUYpqMpTc=;
	h=To:Subject:From:Date:From;
	b=G8jV0FCdwREOOevXFzh3YHwuNNGuT4wLrCvNxt/HSTvAzmHblOM3o5uuUVqjSBBbP
	 bbcl3+rLnOX3u+Pp3Ceo3RKq/JyE8ssJUtU5+OV6psZLW9ijigFBl9iMpTD3BdEiO7
	 O6M/Bkk3cpFflohf2zT5WMdXNBijIGKk2shXicvXkaGjT+MO5RwDT+lE5SzZohZMus
	 8+letyFOq1L2ZoNhsUd+M7FEDVocFiKR9FBi9p/xyrato4CfUF60pDTPaPGxHO83bj
	 H29IY8+h/283tLjw+SKzoB+h1nmMN4f3SRvpNu43r3Idka+q/euhcdPWqg/KAKQaYu
	 ZSbDJA6LPzoxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567B8C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512005334.19812.69596916118473687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ce9f907f8cee810276b16165028056ddef15dd7df3693f8423a0460b5926e6
Date: Fri, 07 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665120053
