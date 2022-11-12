Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF5B7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C4EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668215454;
	bh=d6jB+GaIJUg7ZagLWn3AWGB7GVoADT8RVFqoPFu/mps=;
	h=To:Subject:From:Date:From;
	b=dfRZFRCQ1BvKVj/MfiR7uNjSelP+wEhFto6LIs2v+nLj5F0jejWtfasnYR4AXpmKj
	 HD4t+nqHemM1acBj0xuawTu9TCWcpUvItjto+bLT99OgJGRG9sSQlKpoLFKDoRbj4j
	 9EPQKz9/1xR5GqR71bVQ+UA2JUFwb7WCTv76GCNBlq8y61ni3fjd4a7oaU3DRsc7K6
	 gjoe7+jp7KyIAu0iAYpRBmYynJSXvlsEs1BZ5fu4Ap6FY3yLpnEbh6YkjufOkRw/DZ
	 VNYAT/w+o0Kl4rOHRfEatS15OoPpAmpEwi6YLgq7ywjavmEOkf5dlvNfdETN3NeTbR
	 wRvF3n5qXPu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5540EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821545432.27515.9108059388182528039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416a0018c0ce3dcc66d66a5ef598350eadcc86afffbc67a4a44c7e02e6fa39b2
Date: Sat, 12 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668215454
