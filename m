Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30072563
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84320C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670949087;
	bh=Kdcq+sfcLjizwmg3ALh3/OGwSwtt7Zjod4WVhqUJU3o=;
	h=To:Subject:From:Date:From;
	b=IHszmee0cSDbYQ+G8+ohEb9RjFY86v3AJJtBMriqqAo4ANWqgrO8ox8+veFaTIXFQ
	 1KbqSuQov9xuabh9Hj3F9EMCY6JKKbbyPZ568nyH0ofTIyTmhPGQdD+ij22+6Ix5ma
	 XZZMECDIdCc470TxNVjhDerTDOPdM9gkBkEpdzSGkod6I7sZ6ApLjEpiO9xsXm6VGM
	 Yjrym+IUaLoz0pWw5AlkrW2FygItGXkz1ZVFBaRQ5yJqTsiXHua+LHT6ZlNhUW9lZ1
	 nmAzSNXsHJWWbgdkCthZ5NfdpbNvbxTm8Mq8rFdGQTx/Lf/SEOYyyLKMnTXsRNot4a
	 zkgVvArWo9yTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC23C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094908743.3162.2175558620586775566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdd0edf9f0c2f72cbab5b5dc358baff522556dc65a99b52560cb72a37662e8e
Date: Tue, 13 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670949087
