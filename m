Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807F1FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E722C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667647254;
	bh=+V2LnwgyepEtYAAn+Uo44nFgsxhT2WeX/Fhjk54US74=;
	h=To:Subject:From:Date:From;
	b=RGbdAm/A1uhDxjMwUq0dtPKCPBeWHPPj4qf3iDHZkWilRdqZJvD/fLdQGadw4xkST
	 zAz6hw6Z6aHHGz61XN/Fb0SJ+kru98QOrLJ1pu83JpSiNy3V8Z57UjyofCgytk4fnS
	 isIVoQYV8PE6F0idEoN/Y6gtLkw007wzQyuByx+qUujpMjf5sHfZMwg1E0wx5vnLs7
	 KrPcTrzhdwovlHYe1JzH7TAUfb59NjYubkh7TWsmBCcr1bKcKowXDIXHewGWcMtu7/
	 5HP1os9h1qNMQaSSNiIFFx6HuGa/J27XrNz5avEKDmuHYpXTBagco67jByZMd6W2Tm
	 7eBTzle4W55WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51358C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764725432.26762.18364155464872884668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5557c294b6cdb1ed7835f4108049915a8d582e7677d07c166bcc5ebafa638dff
Date: Sat, 05 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667647254
