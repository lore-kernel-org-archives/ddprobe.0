Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A62139C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83677C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673076687;
	bh=MFfeDVBeUhswaai+Llaj2Ld/S2uiBRcAd5ACaYYT1FE=;
	h=To:Subject:From:Date:From;
	b=KCuhJgnElYrI+Q5WSTsBvt0svah6menI24D/Wk4UvkEQj0I+H2aOVl94oKhKqEaKP
	 42Ikw4T1Ibk+Zfhryvy+DFmyGxseKF8+T1045qcs876vL47OxuX6/vKS30fC0e0vCI
	 mWlU7Ue8B+QUBg5kGYKoTlO3OV16cN+YonW9XekV8SIvL1ZMNCbpP30CB9KuGJ7F3A
	 itrQNniL1nM+ff+ARb3U1wbMDvGKNTeBmCNYgLqos2/Zf5m1H5kwCOiaO6RTq3Qb77
	 Rk8LAm1MCYn+8NgsDDuKXB0ERMl633EjfYdCC85B9GNQrcysW04KFK5+ZtHQrYF5nX
	 dR/owT4rUsyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5BAC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307668739.30193.11327797171974774021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c73edbfcd54ee6980a15311e9f1d9b184ee7b38e957c0390adaa0b35f386e
Date: Sat, 07 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673076687
