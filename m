Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B0B7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D691C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670985687;
	bh=eXXakUeFnn7iuJNC0kT7bIDC/pzJhdYKvkLzEgJ9W7c=;
	h=To:Subject:From:Date:From;
	b=tV/jRdX5PCiU1peBrUxXBdrPISo4iufPTKqAzWPnPAGGnzflofbjDNh4AeQ2R3ECc
	 P+bmIofnc2uHIBkymjj3t13AxhY0e4J8c4nt5p0LHOx4IB9IxBjsckiHZXGmkeQbEs
	 rzbN1TpQKFDO+H2CZD6q53JztQDqjf9RLyz60ANt3s8IHLQLRqjRkEDAlqv0BTFw0w
	 u04MCWCSkbvFPXRClLs11YgLil8eOayYVGVeS7KC3hYcBTSBS63DRWjS17B4NodH2Y
	 cDUMNyypmOnF4e/4Te7lf70S9Z+muRgXG6sq6dnbUt6r25bDU+9KA+16eXt9QwipqF
	 BV6PyW9HHSswQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6331CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098568739.30442.882832220076063864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f738138e8f34d6bf3d7061d974fe034843cdfceaa21d91cf14e16c17aa9fc7d
Date: Wed, 14 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670985687
