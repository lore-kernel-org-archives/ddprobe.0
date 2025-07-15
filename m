Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B842423C8A1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752556793; cv=none; b=VErOTqWJQLM8EHfw/cLmd77+YdywgE0Aax+zP/cWOLvsNLepypvIUpWnBh9n96qf5IY1PVSlieXo/LGASJbTidDmvTXtOgXqt05qaCRGguhgmQ4+KLcIIBfq6SW++YfqRDIkklLn5NgMZy/gi+95r/zIvBOE/hMZt4HsbLPKla8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752556793; c=relaxed/simple;
	bh=zC/K2M7yCzVmLehVcKXMK6FNjUBa7fA0/vB6OVwnbpc=;
	h=To:Subject:From:Message-Id:Date; b=ok2RQypcTXXufajVstUvS2nudlTytYSKCw1Wv31EjLjv6h4lYDOvZJQYpqaI9KeRteQ/6tMQBdYbygbi57AkCMH90TrVf32SwCs2gpeR5j/C75YQpo5h1f37iDkdmwSj1ebTkK5bhco2nV4QroA+IFqkhfrnITpmM/h+3/s7Uio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdNkDsgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdNkDsgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C62EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752556793;
	bh=zC/K2M7yCzVmLehVcKXMK6FNjUBa7fA0/vB6OVwnbpc=;
	h=To:Subject:From:Date:From;
	b=OdNkDsgxQESBjznHNkYEccxUayP+m8JuRK9nJFb8p3pWoNRB5aMc6VSMVp6FCOSK0
	 dWsWLoFI2LsrcbefCfEAqy52Hfsyx2vnBgKUGk3MPuojHBO+bFdeUFwkEu1huBkAZD
	 zSbwKlEMSFIzCu36+sh2zKRwKGOkcPXAMhpK7Qcj6uJ7TA/XfymZtUxwJ3oxhEhLfn
	 olSmyVmBqkUTxK4Jw5i8q19SDoqW+8nbYgDeHD0bL2gb3jiu4YKNnJmFJzsJGtWG7i
	 q8Saoq7HHUPc9/5MCvf7+Pz9/2gaDj0LnmmqJT/QNrVaLwZrgvnCMIEZ8fqAtcdSCZ
	 SuMd1+V10+quA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED61C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255679357.27594.3992871010468711240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecd4c9d00977f9625c21378b52afa7c5eac86544c5b83aee13ca2bb7d9f5ea0
Date: Tue, 15 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752556793
