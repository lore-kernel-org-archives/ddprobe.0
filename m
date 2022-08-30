Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB36518D
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F14C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661818852;
	bh=EmXfI+srKzzDdm8/W0pzx/DBC+LlMsgdVXy8U8ux1JQ=;
	h=To:Subject:From:Date:From;
	b=Smg4JLnIo3hwpUyW8RXribZCX9GRxN7HklIbEHb4MeCjAFcbRP1UUZTRh2YFZsRG+
	 Je1ftM1e3Ms7Hku/oR98E43/w67AvwPnCfX34Q1toqIY9wDX/ItQMl66OlEXfFZ+Q4
	 sf2xxn4IRBzEcaD04p2h93SqpqViDUsh98PsJyES/HYK/KhVNMFW3pKhmc6hf0t1rs
	 8o8C4GNsJW9h3oEvDYwh7dHTP58Toub2hTMOy/roMFDNy5U2mETv4cgGW7Oe+8WygY
	 Vq2/tGGlX2RKqhsidHQTiVljOq0vEJFjfscgLdu/bJ/lypR6afLMZrp4Kxgzrbt9io
	 D8zdVfGf6BM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC0EECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181885231.2160.16707306573242657792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517ddda37ba6c671949e36cd00c821ec89e2794e8e21e164b53c4f65a94b5c7
Date: Tue, 30 Aug 2022 00:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661818852
