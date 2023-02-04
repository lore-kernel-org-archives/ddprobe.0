Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD1A3217
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 19:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D181DC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 19:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675540565;
	bh=Avd/WEO6MN4eu7tNN7O4YDPO0C6kU+GQMZv9qkJ3Mn4=;
	h=To:Subject:From:Date:From;
	b=rEo+ur1IcrtWKr3PJXknWmRls5Bc10IW3Gg7T5It58gmCuDtXAJeFuPtMV7TlJB0L
	 RPcHw838/+MQcX4gZ+TKYwYnt8pO1/Phn8HT8HhixPi5e6c2vjd83/3ys7lP8DMqu4
	 vT+vVRdB+dgdmU3EtsA3WZTgPErDEm16GZEET5Ge867d+Qwa0ohBd9knTFfi/fHNmA
	 K91XDaMXIBy4kRrdLtQ6qYbkNJLfbH2NABJoKq9i0p1CZhkiP7qVEEMDohmfuwfbgd
	 8EhLwWHGgPCqgegS7hlC7eiKGdpzyUsrRBpgkNGPQKKS2cd7E5ZoBql246XJvib9mL
	 FpfPmLK6VJMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3ADC636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 19:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167554056576.676.11299294758318714159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec638e26255b4e1dc6ca5cb2f7fa7bd7e04df4b22a084c1bb5fdf74674776b47
Date: Sat, 04 Feb 2023 19:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675540565
