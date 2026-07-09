Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4A37A4BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783609114; cv=none; b=PTLVIfrAx/fibJobMcRL9JDBi6R6OTz4Qi95M4p1Xl2LFXE3FIuD5IkZn1JcCkvLMkzk1lPStIcS2o/b3hk3m1inS4URgrtG2yPRmQd3nlGv7Mq95sv5G7nVBBBxqESUJ6jjVmtQX8p68V4fCtwBPl35NVG7OniW1VDn5S2dQHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783609114; c=relaxed/simple;
	bh=89mjHWn4Cbk/rhHJD+5nOljN+g1yILq5Nha5V8+pQkc=;
	h=To:Subject:From:Message-Id:Date; b=b6Ebl10hMch5/r7io6IWlGQ4fDTALJg0hHaLxooTQvu9ZMpUIuwnXVckRCgI90Y4w9ELb/2q8O974j86EbApGB2RqZ5l/4/O8S6+zfxmqIizwZWgRoJebn0QG2x69LMVHJhoEHbapP+IxUYtsTK3nrGoIkhVuPBVvyOzmzsia5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L46DhiXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L46DhiXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB979C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783609113;
	bh=89mjHWn4Cbk/rhHJD+5nOljN+g1yILq5Nha5V8+pQkc=;
	h=To:Subject:From:Date:From;
	b=L46DhiXU4CbKjqP3D5cwpwqurec0cQG0+TwKlT6uMK4OaLP7zuf7Nqr/hEmuDXcFx
	 wiIRv/SVCnP8mo9Egqbtn+KMIkf1eVDjr156/qhTLmWIxuJ9D0L/oXQMyhb3Ra7UKq
	 fGO3iZ4e4il43znC8v1wVKzH5hSIIrSN+QuoGicwSA+7kbnVJevBtyZXy0QBeha3ZW
	 +SSKf3Y2ChHljsn8mgqvUHtAiCTVv2aoGtVXOGKLYzjNHwi0DRj+qRxQOowkSXTq9Q
	 6GOO+kSf52VYmS6zq0W7VvDfrY9yi9YXNQ4U22noykxxx83YDrZbzXLkiDhllDToN6
	 fiMZmYCLIDTBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEBC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360911368.7845.6171887466026832356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085c3b66943987761c7e69f5ac6b09fef9f40b94c61cf42f749669468918eb46
Date: Thu, 09 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783609113
