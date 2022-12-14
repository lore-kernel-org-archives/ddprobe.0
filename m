Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A477F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8442FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670978487;
	bh=8Qc/0Ay1LYTyeGn9rPJRLB1DNz80fZN9ejNgW4aNnsE=;
	h=To:Subject:From:Date:From;
	b=pU/79r34zjTGujay2kjFyBIdHxnj4mSNEo61UvgcZCxgHNAQu4UIVjpu08VsbGeah
	 AB0P8xiSSIe6VKs53dSA5CHIa0bvcQamqt/WLdt1vkMB1Q5FIsZGJOH3nUzKHHvEEK
	 lm9OKqU7KrGsw76bYY5A8KhXvKXfpv2gfBAE/mTZXyWKbIW3UligZgK3aTzezBh7a1
	 GcTEFwJTqI6+vjHi6cONA1t/aMdXy0hjgabjd2VJ1/d2nqGpCuvlUzWJdGnZ4gfqyn
	 SWit6WCNwTFdVNQIBEiYBjN2J+lhsvu83tTkpsOa2q8sLvkisfuEcPfNU9wiVtcUw6
	 yKQz0/n7lj3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69989C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097848741.7477.14779694621192702113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571d8811d021b314fcd4fdb59d37fc8578b464412d8bbf1849910e87cf26127f
Date: Wed, 14 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670978487
