Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FCA6FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2109C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682111945;
	bh=R/tSmaMZN9AfyJ4dxOqYNAie/LGyZgCBIEFZjApl22A=;
	h=To:Subject:From:Date:From;
	b=Gbgd8HFR4XULwH0c0RbqrVWdwUaOaaC8coZ6BiU1TUxm4tc7JvGjxmUaK8HCcog2l
	 4zhfSeQZy2FRT7zCQe3GdRmvhD1/c0R2yjQftsQozi0jRa5Oo4kn+22HJ+3Wdu6c3a
	 pp93QlyUHTmnQPpD4JHrltgaNV6foumg1J7QUGw7cGN4rvgS7VLID1n/1qqojybO+w
	 nwrtN/OhpC0nz1+H83t0RRp0tJgP+UX8itICqqLrI1iPIp94OmhdMEtOez0+bTOSPx
	 GjY7Zd3g6ZXCgP/VsQil7OFU5NGOjzMzNBkqY/B3a1IL/niD3wmsyVr4SaCGvkha4p
	 PEpNI56HveTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46EFC77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211194579.19504.13063754550000824145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8993b6943b02674623732ca0d8ed6d3a68f8249de1221b61699315c70af8db70
Date: Fri, 21 Apr 2023 21:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682111945
