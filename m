Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1DA443A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECC0C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661702452;
	bh=shHRpOavvpwWPGSWufRR0TfyDPyrRHxFTD32WINWc0Q=;
	h=To:Subject:From:Date:From;
	b=kR/43uyGxvKQRLtJA7PN+OtZGJZd2ucOO3uOSEKPw0oCwG23X//ZrYPOdJypxadKS
	 FYnjFyxmF2fP6DiQHvIWPDtCuB38D9VOPwfYERt3DtZIQ1OpQfWyzm92qtPJ/sK+qd
	 4ujfYkfdUUNTueh+9iDhrT64oHTOpQJsdgY67879GoeqU+dQOpCXxwjtOPaCQmcRFZ
	 rPMTmiUidqkBfi7+bFoorMFQdrxuGmaL9AY7D9njlc98xrnAIcADLGI/L+4PK+jEAl
	 NW47eiUExIlu11yhopiwvXQdRBPxs9TLXCojRo661/2W2pjONQNvuW5ksc8avUi/FL
	 ekfvgVicfK8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56668ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170245232.1404.6083616220338141082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130109890c46237a2104304539011337f2b31fffa439c4a157aa95f7ebc21669
Date: Sun, 28 Aug 2022 16:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661702452
