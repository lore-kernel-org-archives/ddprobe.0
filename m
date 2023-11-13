Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8BE4C86
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw1iWfBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94B98C433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699840096;
	bh=kH56N2FQPm2tH0kNBkyIVr0aE/Uv8ZiKC2WPqa4CS7w=;
	h=To:Subject:From:Date:From;
	b=pw1iWfBuA+Q9KqD8iGK4Dqt9te9rtMu1HIgecZGgpNn5aWT9ZL4uWmblrcsWrhRYD
	 KkrK/TW34NI/IeuiFfr1Hu0Q8wJlDUaP4u68N+kofD1NyZW5NCk9kb1d5IiDbxFT53
	 SOqmE5k7ZSMCx/cPH57VFAB/3relk05N8ZAZR3IvRyz2f/sx5rBYFf82+kV/KzpbkE
	 cpDawSzbvICUztpmLbsx3NlaSzHXUnEuzQwLCA4DVOVvZvHboEQrTFTXc0HTtkTlWG
	 NIt6VZ/aiQj3Nayuguq5twY6G0U8N7Kg+s6C9wDVDHpcTo6/MD2podXwk/KEKi+nQG
	 gvlnYpBRTe/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72128C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169984009645.5793.8296722986289294300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e04678c56a8f50e64d2b89b08423fd5ddfe8864cea8fec043cb49e88ffe692
Date: Mon, 13 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699840096
