Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077A3342528
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769644434; cv=none; b=UYXUNezbVTwdpJpO3flXDdK8H0IDAp6AJCzBWJkqAB3XTEn8g3aWOU1pHUJu1z4ZQOz8e3phL5yVe65N8KTafcEIUnp/Dqi5SRX53HGa4tFreKHyWU3dBsF7tRAEuJ5keixP3xGm8B4uV/8GkVa6VaqKeYgFoJE72Hhllzv+HAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769644434; c=relaxed/simple;
	bh=Nw4q7Brz2t5udYpZO/ZpiPPw59Oi9M3v9CqJ8XvBQG4=;
	h=To:Subject:From:Message-Id:Date; b=oliqmb1yLRxMtxW/o7tqKrrTQFMXkCRWVqhi9n/X8wTKjBM6MvrfSOegJtdDkizftCicobm4qduXTB7qrl5bblxTTCqC47Lsm2JdfTqhNn1uPzJkGl66LdGKviEtEq6tJt2NoNO5F/g9cjIzc/foiX29ptfu2XfSvOT0cEfZxuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6YcDTw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6YcDTw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7458C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769644433;
	bh=Nw4q7Brz2t5udYpZO/ZpiPPw59Oi9M3v9CqJ8XvBQG4=;
	h=To:Subject:From:Date:From;
	b=I6YcDTw37M+jMnfaKXn1Uf15gvFGxOTX3ZWUzgmxOCV0S90qnH0Q+4U8g731l5t0L
	 EZaTMWMkMMdHGfsD+tvPjIEWVhoul8XvUzbRdmDGxx9DRzU3ezWqe6/FuIHdD3TkzY
	 FooG3IL9b613w9kdbZsQEsPK/tVWzvQq4wfLXdHIbgqhsOcwKhN7QJZpnNwvL818WD
	 ikn8LP5m/TEG9zCbZ8BHYQnxmy0hepg/0zbCXUs7lzA4qzg4Lse3JHG8FMTWgd38Wu
	 dqoIZeA1lUWonM28T42gsP6eTsfiViTOH6/Zu5hBk0pLGeivD0eHn89pQu5+IxhI4s
	 phaNL6RcBCT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92245D46C01
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964443357.24021.456084730644280728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe28da7452c3b5a1ef401111c595bff20b6d89346e2c111301b3221b8eaa613f
Date: Wed, 28 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769644433
