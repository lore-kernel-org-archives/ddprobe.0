Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753F724525
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 04:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72EAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692852848;
	bh=3+s7CmRWKFHPNGsdp3MAp0IyShssaes6o15k3Dj150w=;
	h=To:Subject:From:Date:From;
	b=oYDs8gaBcmn5OI7YW/KNOetjue8ozW3plCu6+nuXAO8ILHeVUhFlMVu6iTRiJrCW/
	 ip8CChDMqQHVGQTz66fNaujjqri7DwL4vn+vkRQAVsbptBGJn4YwAkHpyEmUq1VjWr
	 QSnXDPWZVxTkDR9eG9TMivvuHeGi2y2anC0y272OsSe0uldMTfQqSH30m4HB3A/RXr
	 hM9MqNSB1zESSJO/5TG9uXGF/3GwcLwTBdMrhVvVIqqyOv6b3EfbpppPKi/NQ5QgHz
	 6ALgtKA+cyH1Z4IUODe/beD5SkLRZTdgLf7H1Qkoib6ph/ajTh6fhNqDEpKbPICXJE
	 P+5I+k3cYJtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB523C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 04:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169285284869.1889.6666715100322422045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d60d6a21d86dd5c6febb94050903497da311967aad371425c418d22d5de9bc
Date: Thu, 24 Aug 2023 04:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692852848
