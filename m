Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77A020E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FC9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664860853;
	bh=CnAASPJVmMBVCJCSbgpXRkPwEWxdJ+JQ04tIytTiYp4=;
	h=To:Subject:From:Date:From;
	b=WL5KPG8M7dXEbrXWDKW3GAewfQZmkTA9AFz4p5lze+8Bgrq8+qB7XF8382BQyYyje
	 n1KtIX4MZaCI+cxMCZ3dDviZj5aQLKJkU8wM36KdLROFKwNhMIfZDbjGa1tVlM+nui
	 stmjB8dY0XatjXcx3N3gxhCzPZ5EH0OtpmZKAttmDMM2dCgmn2DDhs8vw9W+E7ry+4
	 DRPmLRXJKOGBjlMxTjQ7Ry5KZ0PePrXbsdmQrdAqpPYGntWta1uokRHmH6j8lM2qlU
	 OPrdFNwFtGJEvZnPfh7qXBtHQ3KmXocPBlU58+Kkop3qZbQARqv0yJf9wpwdgWxPHD
	 9cNPrWcD6i2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B9EC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486085335.10891.15415509456798581930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37e8f86afb47f6530f4196e943999808461beef494c4b84334d4aef93da08d9
Date: Tue, 04 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664860853
