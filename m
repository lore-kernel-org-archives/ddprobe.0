Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B421EB193
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744316394; cv=none; b=QcwDqHE5nMFkh2dmyAyNzVQWPd0bHx7Hyjn6HcLMNzQxj1vtIzvb964uQONZSoOjMnn39vnkS/9wRZt21QJNjZnERoIfkE692LXL20vq2YVhEXVXo4CjWOTofb0ULwCFgcCgYAStmMSONjSVZSaOQRtSmUgVWdw3C6T9GhvmeNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744316394; c=relaxed/simple;
	bh=h7CYgIiK+026qGM0IKNK9Eof5nDdlgsGSJWPR9wq2r8=;
	h=To:Subject:From:Message-Id:Date; b=ZiVxQ9kl1xU3pRah9cEftw4YFp4m0MsGRwhanua+si9qUh5o1Y8FRT3wOY2aZ0VIX6WuwC+up4WeAQhTeyg8djMIMkd00IAetiOthZ7qqYZ/CwGIcWpVLGEXNZdoj572AbwL2Alh3RJ2FgjS7uGjw17GT/ujgCxkW+/Eoa4fuIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u75gBXpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u75gBXpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1647C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744316393;
	bh=h7CYgIiK+026qGM0IKNK9Eof5nDdlgsGSJWPR9wq2r8=;
	h=To:Subject:From:Date:From;
	b=u75gBXpzRRKSbTL9QdOdlbZbPSkVTD9qajZHXx70b5jlhyg3tQQIdCxe1ORsydJOs
	 QDVXbULKeHR7B1sDkahHtj0SZOgNjHWpb0ov94dSfd+52VJjbTlb4XRYIpmz7G00jS
	 mymV43L0eyW9Sn902KH98QV/oq3NW1kL7PN+5PE8p8GFGI64mkcnJrlqGEFUb+wnY+
	 pxLlwmQkKzd77MY18v3c4wXuLvR0h92q2KVWzB6kzpaxVnCyx8WadEx9eIo5+j/8Xk
	 peGi13rAhQl1TBuDhAgv5blIa2MQIhI2GD+Nn6hrzpgip6/+aZ4smj+idUjRXUsoCc
	 iR/3UTfjKFXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EDC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431639358.26138.5575508820893415028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f46d2e70e3804de82a0ffed66a3e50fd2c16f6cc10a4d19e3a0e1404ce3faba
Date: Thu, 10 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744316393
