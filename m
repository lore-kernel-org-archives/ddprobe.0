Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3987C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78093C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661740852;
	bh=FDWk7S6VuMGkuMduMz3v6BHM5QLLdclfJGbr/L165Ic=;
	h=To:Subject:From:Date:From;
	b=IwTAQXS6bLQ4rAXWVULvsgdcXK6z5VUTe2BuQLpph+NoTltCKgCBTpgbYCl/mJ9gb
	 ffLjVhPi+BbDefPYXOdgVb5wajDKGuSadNp6SfKE94HGkRnhQGhNzFfLsezgrDqHyR
	 w6RlgsAOcbqNhbUCMwv9RYqWkRgoEqVYeSrM59jEQyQJO1PoYn0fXPzvGn/oEAuuRt
	 2BciIK95Nc/XaEEKKoj9l7MI+JBO/TO9+jr7L4G1uygmwHsPbJo//CtC2BUB9cLVtQ
	 cxDd/BEA2d8JU0ux7wYcnMz4fvabfaFgaKS8zfgpiXcXz6TiGkoTT6x5FJl93sVN5b
	 mgPzk2Pfp+K8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF7DECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174085236.11720.17477689186182686181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c311f62f53f305c1d3b6755131120025a45d672c04ed79a5d2446b6d969a456b
Date: Mon, 29 Aug 2022 02:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661740852
