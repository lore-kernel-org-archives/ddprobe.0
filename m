Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BDBECE
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3ECC433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690063928;
	bh=eabl6AA+l+5wcwHB+SsChnoLIC9aRskadR5yk6BlwT8=;
	h=To:Subject:From:Date:From;
	b=CjnpNM2V3KmJFTRdCisJY8z0RP0hCRga7XO/3krUMGxe5r+P8fYGLMeQDcTw7bcY5
	 aPt4OgRw1GNuMIpNyC2IV9I463eCj4tU3Kz3wVAw7rpeb1ol3Shiv+VoDzqJ1F6e8a
	 bOs2C5+55FIDf2rdqBnHeU5tOxFlgTW+BAWfyiQ59YWhQKEwah4Oql+0sgrwSFETBq
	 kYhv81X0i30Pz6vWK246Z2CwyWn3rHCWUogfvn6vqSh3mYqV6Hx8C/RpSjSzii36K3
	 4UyBKRo+jUKQUg4M2AlhwA7N9EMDet8yFYzvfcC/GbXqSwGuS3e90dxT0ikISde4Em
	 aigjigEjuaonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F9C0015E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169006392869.26654.7620892712134648980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6fc2a0a5d229fe48ec821a66667ef40d79b91433f60f4bfe40769b7f82bb9d
Date: Sat, 22 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690063928
