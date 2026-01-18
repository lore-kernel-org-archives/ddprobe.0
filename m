Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DC32222D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768752834; cv=none; b=mokstmujksw3ozDGe/7Pdng2SuVfrX54lhr+SYMfPmvXInENOUZQIMAWJPUbXmn6I+QRG8gA+DLEtM5nHLuZf+bZHQQUu3rR55+94sTV+9+C4szGe2I3RdPtlOXcHPiGoOoydicvhfAyjDKGkZ09ccJ6IfMVlL7IxQvoDWS9NEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768752834; c=relaxed/simple;
	bh=HsvgsrndVOUkm6+p3iYQRI+yY7IbLeuFBhHXTDaG67A=;
	h=To:Subject:From:Message-Id:Date; b=PlYm9hXbfR8eqs23IJGE8VUwXrnrKLtEQkyd+RCOP5SVPzNPMmtK6xKocc3o9Ynhd6lDPgdUlTsHZ5JqKEqHSp5ahLIl+uhnNvVb1zu3uXJF74rtbmm16D6EXXFaQBFLKGHXKw59mVSpp+DWduGxDiQRRIhfYZQkxU13HaGzxd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIecUe+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIecUe+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73FDC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768752833;
	bh=HsvgsrndVOUkm6+p3iYQRI+yY7IbLeuFBhHXTDaG67A=;
	h=To:Subject:From:Date:From;
	b=CIecUe+3EAuT+VhOkbpSRFTqLpK78DvYvXJEn4fcedDnF71Kwd+rJsOWPUoChgol6
	 MvBBdff3dnQHyf/S1AV8iNMDVvFvBHLNyiqpFKkNXhQ+QUaBHiIvRhxtOKLzN4UizY
	 HOnQoEzlYkxo3GDjgFTMuonOETLgj2xlWs4t04AQcUmMZdYTe5zuweeazCXEfJq3Wk
	 UgD1Woz0x06azsYhqNpC9bBNHo8HrlO5kIw00Kp6TZD2zQ4UaGVlzxH+RCCc717Bfn
	 fspveEcQPbDWz01mIa2krlETpNryStNgtW6oyZRF0KaT+x/GIYW6+I1TJTUrpyyHrB
	 8nMNNOEFs6Xhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95903D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875283358.1513.4728611964058103780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c4825c46339a8e5bd491eb88de3522945583576edbf95fdd0d3964baa32482
Date: Sun, 18 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768752833
