Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0340F632
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8325BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669005654;
	bh=CnNdwOYZSo2/omaPvmOQqXq1ZN4wN59oHVK3X0KHA40=;
	h=To:Subject:From:Date:From;
	b=FasFSYvP1Tqzq5tKvChJP6D1Me5HwkspHKv5uBAkXikiiIut2VmIqzlwz9GxeTS8P
	 A7inl51xaNGmr/ZQNBVjnCnfN4VwDOf8V9E1OkTizFUFWBnBB2r42FW4N6J0C0e+80
	 cHT/hfDJ9LdKjA4WQRg6O1Ex3nOLT/MRKb7lqIzL//GHLew9nv2iOmcp1tfPnBcuNP
	 R7/f7pRLqbjFuyXJn1Q3dO3Tmfb+X+x8dLLy6HAJI+JLK0lpKclFs6L/P/vp7176Gv
	 38IzfyiXpClgKASeDTsrAo6BKBbPTcWUbCXbgAvUAcz3RmffmZaKN1nevt8WpJIaSA
	 6fX/yIr7SfQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65445C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900565435.15452.18088620596094749261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f76ed4bc0223cef3d7cf98eb1efb367b9bd214b49c7d1e326aeb0ba931addc8
Date: Mon, 21 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669005654
