Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD539EF1E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778624434; cv=none; b=FWy4iI49LOFGSOLrDp0dXtBUDzJUPk+XCvhJIGkrTNatJQlvG5RyDKDnL5h8r229K/Op8yk4w+dyJ7KVBL7lKxAKv2jbcsbOg78VvvxDXJksarkUVh+NoneESXte90cKhATdL7yZSvrmPTb51GF2Q7Ffpwjwxkb4Z/33iumycK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778624434; c=relaxed/simple;
	bh=hnXVJg4wKYL8/RGy1Ki9QTUmNBRANkGWSS3nTg3pTrs=;
	h=To:Subject:From:Message-Id:Date; b=NYq72KvkcmyGGxN+0AJdfHxsvOW6JQgFk78BNB5XK2s0TbublGFMJLlPre8ftDkBGCibMULNn9G3ga+YvF53PCRTQCPcKt9a1wIythbIqA+6RLEO3H3bGzLtfl/aO1lSyxCZsB9ad8k0Jtw8wwlBawdL4s0fM0CI+qhxY1eZsxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoWYZQS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoWYZQS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1246C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778624433;
	bh=hnXVJg4wKYL8/RGy1Ki9QTUmNBRANkGWSS3nTg3pTrs=;
	h=To:Subject:From:Date:From;
	b=LoWYZQS/29jreJJiboUlJPKvA6zFLSLBQ9EwdsJZ0i3cASoeuTgQh0ZvExSJ4oeuj
	 gMcf8iINMaw/t7AJ612Kl66CV2bgjkSrUTmVkmK2/l6qBbAiJZDtVeuOS4gWE6jkDR
	 4QjyV950uq0VQCz7AY9MK7QFcNCskGVcTxJ2ATMU9PD7eUWoTiaFgq7JRp9Po6iEui
	 2QRhuy6NGo+DiM2dFlUqqpPMfkZTPtPtvwc72DLlstQw4a2SPZS/B7FtQA5Nk9tlzQ
	 Z7SbbYYf4KDFv6aJbdsx6FdM+ePe2tYcxIG1/PhCCvdOrSax8hT3U9Rx/5Of3M5VR1
	 u4hf96JcjGBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF98CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862443375.20021.14807253930426674744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149ce6169a0d62e9b8c5025d610ac3e8c0ad0dff185ce6428cf4b8127ac56053
Date: Tue, 12 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778624433
