Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5FE376
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688261648;
	bh=RDPS/KRHvOB+WSD1tBHEdkEFla6IazuDqQYLgAeEONo=;
	h=To:Subject:From:Date:From;
	b=tezucTQ63cjBQkvw/I3bP4X/s5nB8kOPtfiwmKNF9AnoXmKdgdU6ZK/nVuZ6d1eCg
	 OvHC+NiC9nyMV4VmH4XqjPdkoXTrhEmOwyfUBUnXMFCiM4nXUOwL4+erVhXVtHyNJE
	 wb7uKOTgTdFZMBiCMnAnz9Zj+FQbYpyd01tbcbJwX6jagVLugrE1RyHVzMMKaWti/q
	 48y58XMHzzh6tpYrZ/34YeZfjbxCoXozvM1b710HfGNGcJowXFzHDHtoV7qLpx5lQW
	 +YIT2nxJS0ENblXHv9HbJXTPkPefpdo3PuJZJMn1mIHtAuBSmlEqTVCsxe1jyug7jl
	 g1fFXMT/cJ6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2C9EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826164868.14944.9252595537989094970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60a32f0671d7150f609d46170c1019c0a5ea1f1fec5e63c12f514f5fb05726d
Date: Sun, 02 Jul 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688261648
