Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4A93D63
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBA9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663938653;
	bh=eeggwrQTZXDySAHyWz2Ou6b8rDHZCbtbdd7bbQ0861Y=;
	h=To:Subject:From:Date:From;
	b=XxJiD7VkEMdmq9jKk9R1XxNIPwFqeYuZ0EVm/oQEDanBoeAU92ZK/s/WOB63RFlT2
	 bpkzPb4ylfDgd1Jlc75aCmtPRKPx/bXCetPfl1WJwBODCr5WKBGzxHMKDGrTk8Z10u
	 zsKPwUDvAZ6DKUOcDVJw0E4dYAJm60YjXgp8myDk6R8InfTV3QvhSKf3eGG2jKE2iP
	 ZrcynxQSM3K+2237IBMTkwy1ONWsBahJOJq3kpTNn5g+KEcXQnt5capigB1C8vpmbE
	 iUY6B8aNZtMpeNLrEM+pDLfwkHbdaVjBr/xZLTGhLxiTf9jItzf9rlnNx3KZRiQg4U
	 a/WXDfSq6653g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51452ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393865332.2104.8903618219406283534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f9dab193ec5158fae7773636439a60761ea0dae6cd69dc81a59d43d310f3d6
Date: Fri, 23 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663938653
