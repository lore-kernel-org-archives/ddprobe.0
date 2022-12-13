Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D712279FA
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 897C0C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670967687;
	bh=FeEqB2LHnzxVSbFg6YAj5++2Si0SL/nBgMKZybzrh4U=;
	h=To:Subject:From:Date:From;
	b=PTSvVchXw74M8cCPJ8COF2zB4O48d+yCGh6nyKAaPXQ3Sz/U1eqf7TGODyxD85RmW
	 bJ8mE8B5DqosN3thOAgyj1hTEb4osevb/qQubdchynZwxmEiXjUjEC7dms0t9u2GMu
	 +gkCNjgmD93nYIYnbBrPsDlYXZWOWh06xG3168Owq7b/z22qufXdDMaRcUrx71BUMJ
	 LNeD+GJ95V0FUfUz1VP2pP9VyRPjTheHnXI1qWUGnCmd0jIFmf/3shpPXi5+e+y0vp
	 ltGZBfDLobXQte+8WsNK4VmrBZ1FCW8lZe2PuPxhcXqGoYIVawyRZipBGNctc2zes/
	 bvQ4pIh4D4LOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BBD6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096768743.10122.7328051993157159978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91b5a4f99d19af6412be8ea74a672bdb2a812ee5d121f174cef1121827ed0a4
Date: Tue, 13 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670967687
