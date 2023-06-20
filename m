Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3908A2AB42
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D9DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687305188;
	bh=rlvKQuyqOtvkE8RNTp1HbjURFEg8cUH7KzPVShC2vo8=;
	h=To:Subject:From:Date:From;
	b=WuZl+fVls1wFfsP0IMoko8jJLwoeRQnbdMvnkXu7zHMTx03eGQ56UkhF84KQVn39k
	 BcpXsqDVqKu+mZ6ny6YQ8Da6pwF+1WanrPEDIp0F4nVLG/CNuLCzIiFICMIGioFyFR
	 QAo47c5ZCU63NbfADgk0uq6qYM7mXkf1r/Qm22b7LdXnyY+pyYNyiBD5dbUDUTU01t
	 aMusKTpJut6orrFkLrt3K7zhZ8pepIBBWa1iFo7KxRxrFCI2YIpvDZVx/QSTCexUiw
	 9mw7gFPeRofKxhl/7kbEKTC/RphC4FsTYQ89+WJENnDxpTVULbuB2Zr4sTeH8iwURV
	 oqNWHMNVX71cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E2FEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730518867.4288.3749201220923985500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1256c3576edf9ee6fa45925443205b847eff6536ac1bb2551db33cf4bf395606
Date: Tue, 20 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687305188
