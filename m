Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B247B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC4EC43470
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666500653;
	bh=khr2yL/Ia8tKnzQPJnQBW4JvMNSj7zOEecZgtgvAggo=;
	h=To:Subject:From:Date:From;
	b=sgwT3p1BqxD27PQUX2nc2AoUuD2NBCjyKLfjdx+eZRDP2oUPDX1U2MG7GRhSsXOqz
	 /bgrTzgSdqH0+/nuix0o7g6b5VmjTRwwHgsCYjBSuPkvKD3WJBmSpYHS+4X7AYOS92
	 8jysr5FG3TP4QLL3BaPcEYVY4z+9rGAvPLf/Y3vcOOk5F1O+1/7Oe0OGyfof76mOQy
	 UL1kQT9l4B/HbLMZi7Sbkdi57gCAMAH2/+XJ82QEyRKd7ZhKiSz6IxXKhU3IzzYkkq
	 ZQH0Y+ia1ItxZ1myUs6SrO69afg0cFdsE3bSj3gG70ZuozCUzULtEhQzskECIt5I3e
	 Wsse3oDfTtUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57874ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650065332.14360.17838274218853631255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8096b0f8bff5cb1a8b887c20c75a0c7b70b42ca5481e5676c66be04bcceb7c0
Date: Sun, 23 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666500653
