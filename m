Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E1F11CA4
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE00FC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688587028;
	bh=Pnn0KY6KoMcksb0kYJRmrcmpj5qfSE54Ap/trXMxTCY=;
	h=To:Subject:From:Date:From;
	b=Zbb1SpYzTefBcCEcEkAee7OzDIY6Dv7t9MUsqwbJ76GWHyO1X0ANsCulSMIC1NvAJ
	 /ZVpXsSJHMr+Jy35dxgqk0TyDtwj8bpUar8aymS8cwi8nlLMuKGh9Avxg62mWdtoPg
	 I0nuQbHJSm1i9JZaRZ+OMsM+2Bx+yMtAIEoHAXSNNu9JweNLzA374lEE66MP3GMW2c
	 ftyaj/enswAHyb6lSpsd9ruUOjlSB7UJxhKkwZlla0mmVsgtspVA26pLObABP+6+Sa
	 OhxmJ6guXTRQaf5SIqN8ctJCp7sYu7AdhaZwoV8vwM7DAvOyxoNnbCxQCtZ3vpsyV2
	 bJ7cPGOHXBAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BB9EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858702866.29037.13499845622486264509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7502fcc8e8615697c7ec105d7c67b9d1fbd6c3595374c33a7d90494d9b7f22b0
Date: Wed, 05 Jul 2023 19:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688587028
