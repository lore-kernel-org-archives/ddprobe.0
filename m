Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC59838F8D
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQcnzERP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E89C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701340696;
	bh=zobbnFRWNewZdA4iHOW8uNF4Ya5P9D3/6/JipsEaIs0=;
	h=To:Subject:From:Date:From;
	b=bQcnzERPJzUZ04su+MFKE3p9Qpe+1e+eZT8NWFH+ohes1Ufakm6C0vJdpGJo8NKnI
	 ZDgvaizw/ebenHMIfQVNSvP8G8XHo4oYlDJEA7uLHF1EXqVRX3d3SN1tHXmtQmcUNO
	 xy3RqktBss1JIQp0Sa35f1MM+c1gN/Hn7Rgxolj1bucrOGxHMnAksN7riA3L9mO/7i
	 Ym2QhoJYoFjz9nY+By8xs/ma2j6X4b3AvzmW+x11uF3Gxcl/AFkfay1mFfJ+mYzIBQ
	 kHYtA+jEBE2pcQU5MQTE7Uk7mwyvCPNPzqUfYDNukI/tNGdBh244UWrOb4nT4MIGAa
	 fOv+/Q59cxTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60514C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170134069638.2142.10141537709820748156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df72e9f57db650a735ee50af0398c1980e8ccb7928672a6d467f7ec276a6ed2
Date: Thu, 30 Nov 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701340696
