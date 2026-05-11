Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB53377000
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778501434; cv=none; b=Jaoibc3xPIB46G42eYQlndyXOhG7woA13NOaq8eBCgtRhmuErgz+0pGQEJMCXKFsXk3+qJegDLKT6nMzUXq9sdXpqBqCcX31aOiRRFkGInI2hPTPTAK881fmqEWiXfSusheswXVeFHBDXNVGo/uinmn6dl1xN0fMQOVGFEIcjuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778501434; c=relaxed/simple;
	bh=7n/Thm5h52WIZ2RsSMRNBgSQWRDcs0Pzv3hiLCC+uJY=;
	h=To:Subject:From:Message-Id:Date; b=VFBMk8HMu/bw59SIJJEWGLu9jl/swxMiIWHnNpH+OwYsMBrzpwBjZkrIOI6N83/JzedANjKgUvyC2jISmf3TWPOETqy2jwmEk9XUFUpPiHuveUlRnW3+b3FKayKiIUbhAylLzNpDbNqcz1+9oIVbA8FqkafQiy8aQWZlaC09HL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO3Wf77N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO3Wf77N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA57CC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778501433;
	bh=7n/Thm5h52WIZ2RsSMRNBgSQWRDcs0Pzv3hiLCC+uJY=;
	h=To:Subject:From:Date:From;
	b=kO3Wf77N8H0zl6wMvMgg1LFB01vuEv4K76zKPaUEx7EtEIwPdOs5AJB9CjNTKrW1j
	 dz8L5oJ0yybR7MzJrKzRSnseqaHinxna/dTrHVql2yztVkXH3XQYA/6xjr5+9gZr88
	 5yj1+t0/zw1AnxnI1t2QAiA/FBGAqeVznN6QioZbMk34rpZeMoRaDsPdMgGSTjnWAH
	 hLBtjjC3pUfdF/n/+AYodOk/qRLQLZJ1YHZanHU1Xqe+KMgsGJrrZoWvLMXqoEx4dv
	 CWwi/XmwpSEuUspKkfuVPlrzF6mITSelaEnbgcYTNC1RoYlxZx4dwbN/hzaw7Nq0L6
	 JvFIxRy9TKPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB760CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850143369.20036.11073894757543465853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92dc294809c8a675905eea37dec91589b08d54b7fb9791881a65ca29269fba6b
Date: Mon, 11 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778501433
