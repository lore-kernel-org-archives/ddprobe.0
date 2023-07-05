Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86675134C5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C02C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688593629;
	bh=UfrbLcDibRZH5KZ23gLm4S6HWL0cDDZ/nmlXwJW0BJs=;
	h=To:Subject:From:Date:From;
	b=DcTN057rbUybf3idMkiEnCyk137kgDFB0ziTvvJrg0+UFCbko9xh/pnqmRy2jYFNx
	 /hvTw7Wz3LqZUaogWGZmxHkpemvZmEZ10c1Wh1Yfi3mgTUTFN/44Cum3rbjvi5hz8B
	 o6Sp/K3JtIRuuycnJuJluiiLB1id6kq4hihRFKwEnwtzDpEDgOX1GNGEP5I57RN6ht
	 kLhxK3PfOiYGaZFFpj9QyY3Mq7hKt4Ro/koISwlyLBXB2qSVVKnGMA5eBAMW5vIeyg
	 V0ltwbI3COWsY7jq+E8LG98FAejq98/fv8I0RFT+GXaIs927O5sRf8ZAEcnQZvR/AR
	 /+UoSzD0LkYyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CEAEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859362883.6954.6928088689205699635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9683da882f224d188b9bb2cdef0e65add0983e74393f65f82c4d8926162e1a
Date: Wed, 05 Jul 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688593628
