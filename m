Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4ADA4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF03C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690064528;
	bh=tyD5Id6EANNtTGObinSGt40LkmPzQ0Okw6bszxQrEZo=;
	h=To:Subject:From:Date:From;
	b=MshGqzid6EaIW8VHwHDcidvY1yN2bjqQwFDcI0CpyYc4wUs42vqx85n+BXEbBEt/f
	 HqMxQkpCh7BsW8rRcfR89mfO4vRH2j/TBtDKtybQsICYGQ8CANmVNZLvzbKpt9Y6/B
	 ZNtjZAsMYfiYb+8+6r+Mxa3Aceg+MA5u52QrNpVKJdUFcGEwqi4Jivcf/uYsiB+iNA
	 2t1G3UUwgUUkZiGocBLgkKlndzANa35xxMHXMGCllTcCj8UnkpBAB26P6EfmLe919v
	 QuMi+4JMgU8kQnc2CNWfcUzPGc2v5flj+Wy6T1A5S33y/pRtZL2kbbthoeVEmJdhgM
	 ZjTWiA6Iyq8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB4FC0015E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169006452867.27615.4776071366943876051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c804133e1098f402c269a67202524ea3bff15e914f86f403aff5b82b9420ee
Date: Sat, 22 Jul 2023 22:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690064528
