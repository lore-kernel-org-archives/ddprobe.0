Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19990110E
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXuY7eq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76376C433C9
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701161296;
	bh=eaiYxtwLQWrI3XPHC9Je2A3A670McNCgAf0kQapeOZQ=;
	h=To:Subject:From:Date:From;
	b=sXuY7eq28TURlCY0P3yDQH+ghyd9nk0YVVYyDC7a8V1qowiKqD/VTW6xDnt1qKyGh
	 zZ28OgFRG7Z/YAMwCZPXXRDhkMxCayC0W6YbIEJE9BtKXeeMiniAO2akZp8P361wN5
	 aKjf1/CJ6NvQiWX3ri6EodQ4dw1R9Iew0fWHWDISvaMDCB1FxByuyUyJ1EwvaR7Gqq
	 Narh0/15voAaoFmrSP4nOHuhhEIs3yYLQ2SA9bsCxd1dP/vYUBHyRxWlvI1z3Qwjg5
	 JzjueI8ggYB0NOKYowQnOlxWrE02QL3YaBUJaXiD9BA196H1OiSOcUb8gcYST2NZLa
	 zG9CnkFtrxGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD5AC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170116129637.4085.5741455596478572470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a71ad7f6fdc4cbc5066a14d67a6bdb7b6542116e2b7213a45bcdfd3701fc5e
Date: Tue, 28 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701161296
