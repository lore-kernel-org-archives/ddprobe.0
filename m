Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1FAA2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889CBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673829087;
	bh=wNuUxacVqJVeVVHQLNhLmL2VTN371U/CMrbU2rFG5Fc=;
	h=To:Subject:From:Date:From;
	b=ow1wmlMfnUrQX9Q5IOgabhSvHYNfSlmCkhh/k2IMyNEAuTJCwdlIxTft8FmfwhJaO
	 Vua3nx5VJZOLQ22mhINffaYWKFY8csRc+6NWsiYzznAVTM0khHn0p5oJlUwOJAa4Em
	 VqM7QQh8nsOXb8/98McbvZCszmAqbvvk7/AZO3lEn6pnjATY2EhdcOE8ezzFGVYj/Q
	 mcdkj5Y/DmgOCsxqA8L0uqJMWsl00mfb6rbltRBaIe/S3wLuueMwD1exL2JRQPg34N
	 thV1bJvDQmUaRxZS2kRPkZKe/mokmipfgj3uqQ4vzzKBYpFh7fLxQpn6BuxtOoIsYc
	 pVCAddRr9R7Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E55C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382908742.19237.486339479389195790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8091b3db931e98cea8951a5413049bf3686d2496cbd478864822fa8c95dea4
Date: Mon, 16 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673829087
