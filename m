Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08F68632B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767618234; cv=none; b=HrcDRUWEikJBXX0zoxBgTaJTW++Cr0bKxoWu2sialsxV61/7X7E269ioMNrzJ3q/3EKooTBCUe07biiB6NYDvrUW3bR7IpY4i/NtLzF0NAFCjaB6t0+Gr2Dwbv1q8COIVcaWRuUNnzZPVzkIuDGsdUXG2haUhzyUi60Ph3R6H5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767618234; c=relaxed/simple;
	bh=TIsbNEmaWJC+43G8pQ/oqJZT6PtAWmkQn5l15jCL5AI=;
	h=To:Subject:From:Message-Id:Date; b=sNhmA7vaK+KpUlMcrd208LDB6QsfzLm0c6XVzWGFk2fFnYiaKyJE+2knICPffHqsn9zMaOT9UaIGjd0wCmnjBtJZXnDaPLXdvtzWNLil1UBL+1hrr8onfEK5yo/WEUkRQKzp2OZRpgkWV9Jh7i7kgMcb3TIlfNOGYhPFwmSwupQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaarkmjD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaarkmjD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD8C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767618233;
	bh=TIsbNEmaWJC+43G8pQ/oqJZT6PtAWmkQn5l15jCL5AI=;
	h=To:Subject:From:Date:From;
	b=NaarkmjDqURXDg1AA4tLEk5bZ90NPd8tWbsKxdIRsyIr/Qv2KoZncw7MdSYOhoHDe
	 aA/0p/Jzc/zwOC5ERWTtVAuz9CvizmQiMm9ckMwAZg+sFk8M5tz3JaKGctijspNfZG
	 g+j0hHuCRCYsPfwy0RJJyBakqf/TRZAV3uxSlPwEYL6U2nRaVdt7ciuCbZQio23xER
	 iH6I7+Aj89O/OgMfJ2Wj1/lNwwTmu/kQG8azEVNVECeEfBB4z8rWZQiUcRfxmiktmT
	 60gj03w0xyV9jzIaJtRGpcznpqDdZZxGdxmvRaHJVGF0APbBeyPnuJGOJ8fXaUuqpT
	 5oREaXOr8DArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE63C79F8B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761823357.4128.2865954919613088506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313913d6131e4787d33359d144755e1af82f37f80285719b542210013b43f704
Date: Mon, 05 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767618233
