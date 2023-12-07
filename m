Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B69B37D2E
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSP3jkQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81120C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701952696;
	bh=m47R8qR9PTrWp/IHqS5WTUrNP5/nD3Sz0Q3VV4sAxVg=;
	h=To:Subject:From:Date:From;
	b=FSP3jkQIfrIiwQGbWOoxon6weCiCjyvxRUvpnz/hwM3NcQ4qpjlj36T7tnFVhj/7y
	 03k8kifdhJspoMl4KXC7KlEaxuarVBYN/KMWaYLwDgijvaEzhhJwEb6sAOGfl+HXZB
	 SdkGRRcdT9IMgs5XFuOrJfJB9pNUD3DalqzyI8uNGXFOp+NglHBwwqLqoNiKiD/94I
	 iUctVbtbSbmUOWM45LwIeLuObnYUyf0v0+U6Dd+QX3RHj1mrtjzhu6AbNEZTIYOLhf
	 vZFEOKwxgkmGjRIISi3HcVOz9DQXG9LzVWxysd4IiPFrJAgK4mBaodlFoCd7yFLge8
	 KKDiHsbSUDRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA71C10DC3
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170195269643.13132.1135716900654201221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c0327b9221b3688db2c92bd71bd5a48036b5ae462dff8230697b6fc7a72fb7
Date: Thu, 07 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701952696
