Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01801FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84979C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670822487;
	bh=2cEgSsUnRcIpqCi+ZgTltH9jmMZuEci7KA3ZzHCTL8k=;
	h=To:Subject:From:Date:From;
	b=GnUzha60081wggV81goeXdESOgk8OBFX+TBnoBT7ulUbh18AXNLtgspc0yr/gnOIP
	 1XTkZ5LDTiA6oXEeAka+wiouaSM1VzSagq8c44Okycbfs4kiut5bf8aqCBNaz21+tP
	 pI79zTTLUvaU8z+5XKwEC3uC9rbUfN0DsC/k/QU7h4OGQ3RO3KBRjeHFnxXfae//Ij
	 pW14ls524HRmSyINkwI+BNr6kx+prs190zXx60GvKM40EjppMeSScRhi4OP9goExHr
	 EhVCZpPWzmJyy1foIG8jhMYEcaM31DIxWRlI5AXr1Rrl4cSqVxFFnfCz2X7694Enad
	 MJiGmzJx2/E/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68331C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082248741.21714.2472439700357714164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0136ef6ad65a96e5d60369dbf2b63c50314c8ec07d2fbf000d89b785a9c89e9c
Date: Mon, 12 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670822487
