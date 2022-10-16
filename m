Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF872568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D10C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665957653;
	bh=5W3+6w1dh/UuJmDvgPINN0FB82S2ts10cg0IDz79aq8=;
	h=To:Subject:From:Date:From;
	b=mJ6WUgQ7Ks1IeUfZl6C/ANeNljZNOtFBZMW+VNLJTMckM2PCFk+/7AbekBOqaSebo
	 h77pM2IpfqVyabIfY153I5ZHx43s8iCdMh061AB9MXWxRBxzWXh/z8f3xBD1INgkyq
	 XL2rlfX8qL40swh5Rh8y5pn9RVobhhBkKsEyteh13WKM+doGy+nzwRskK287Z2Xp1s
	 l2VLx6vE+ig1gY4Ae4NkyQnxNvd10ETqc7HL+5iaowGemkqFw6PzoFHsGDDmahDPPo
	 UVDQFw4cryEHKJqFf+SzLY7q/JG6cNq4QlnYwMfOaGZd9awkGApCvdNZGyU8h4jdyR
	 XSRwP9Ozk7lbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3C5C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595765334.31201.14062171033349270598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b11ef1ae7b3e90ae8763f63170f148ef3eeca5baef57315f92681a98255fd1d
Date: Sun, 16 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665957653
