Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350101FD9
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE208C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677139505;
	bh=qQ5dWkZWIQ24e8lyajcnC73ssxKVGe9R0FyKTLIaxJY=;
	h=To:Subject:From:Date:From;
	b=GMgbM10ATLKkXpXTdmvgFYPY2s9L6/kW8fAeML10l/8wA0qgcTQqDEVP8pCWJV0kX
	 KZUgbADusWtlCJ9pIczMlLDXC7chWrHMiDXeb2OD3usWLMsUgn/iCR/nUhH59cMcyR
	 N/NLceTRFNM12zgvgzFzVuuZ24EkCPI2EBJR2Bm4PReRpqzxwRuul3PbzYZ2MT3+BG
	 qXThMwBdDHOIi0Spyzf0tIqC+ib4Ko8fQB4RGM9+Wwnt9DTHeVngnasSbns7y/X3MT
	 Iu8b96/iwd7ZVz1ZwQ499mBuyWPJN/Dzi3BW3JFw0W0211Sr6VEUU3spyGWNlKb6LD
	 +tp0BMTZ9Kobg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B90C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167713950578.13430.10840563515680668883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b553d34221aa41534e8220410593dd9a501d64988b8d803dce2c3a294f02f1a2
Date: Thu, 23 Feb 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677139505
