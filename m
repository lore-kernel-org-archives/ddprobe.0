Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA4D11710
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 15:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA9EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694445248;
	bh=LI5fr8TmIxxDeQE9gTjWIRW/BAsFPDGezKosTDl9S7g=;
	h=To:Subject:From:Date:From;
	b=OFpSjC7Ec6hRdpYzdSU5z3QUfdIC3PpXi5tXfmga7UYcz5Gj6qZmE4QyciZH60Mq5
	 631b3Yj0vNglOX+waWJ757AMOSBfaUoQcBFaMNBmKWzgBFQm88Tiq79KZ0PMWPzjTb
	 MTflwVoqG140317nYjjyUWYfbePZat9Dn5ifppDPfrSjGszQhEkWM4J/Q/n+lv9Q/c
	 OTaXQVWiTQikQJJvFPdvOC8rvCulJrptOfvmCHXIToaciFaEEsOjUORipj5XHyISQn
	 jl4OSu1JAJYIFYwRIDxF6AWh0sV6tqTuWJQfM33VUK2LnS3EFyqSo+gaJcvJ1vS7GF
	 Rumez96mRX0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7582EE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169444524867.12336.4754443399772471994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83e943136de6dce64f0c3c02618af9ad63e24a48eb29b6387aeec976217ee63
Date: Mon, 11 Sep 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694445248
