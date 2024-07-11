Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31A15AF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720669043; cv=none; b=Rz7a9teOLZRqpzxCzACzkW+W6Qohs2yKODskrnJsXUulQMjBdDpdEUnjnmu278x/QRe+Vuo6F1UBZYFw4hUJqyp5KzxJzt52LCTbBn+CHa9L7JTy9pUyhTc5tXeWllUX/J/Ai3lQJ0RXZ+MFuFH5N558eT3/86+la/jU8jSZ7OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720669043; c=relaxed/simple;
	bh=3UdCFYCzAlApQr3ppgy3twYTEwCLkeDW5fSIMiTXiHg=;
	h=To:Subject:From:Message-Id:Date; b=U2gzYxWCN3lXnhQ6MfliuMYa1eiXHDIa92l1qDOiX6e+Uzm1n5lqSSZpuvB5zYmjOg/BhFoKEdCgvQued1pp74aEEqbziyF3fuq2+V94cuj33y1Pox1ZFvu3zqqOhMwqUy4HTvgXTvZxTxTCgz5r5FJ0Aot2GExfsNgPL5e0yj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH0wUP/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH0wUP/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25E8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720669042;
	bh=3UdCFYCzAlApQr3ppgy3twYTEwCLkeDW5fSIMiTXiHg=;
	h=To:Subject:From:Date:From;
	b=tH0wUP/79OeUByGXuaKTuAlrVmHf+lB+nJWGlmUKXAfgICgQTxy16xbSxhDwcTfCa
	 TH6IWPfCt0poAe7plVFxmqEmQZplYjG9daw3GnOfCxqYsSPKGhInQTrMQCB0n2eiSs
	 Q0OysdzvVErmq4rLYlIEcfPt69o0ZU+hCi530M5KVe/491bTY1xsGR8j+GmfEZ0x5O
	 TnCl1o1pPBthy4auzLect1h5OpoF/s+jijrXS9xz2MgY9OMwmjwLptO8PzIigSC99W
	 bVDRrtek3cKN+3ANDj3MituX42RpMWVQRj7jJwvlid+5Fkk1FaxQsva0e2JQkPNUWm
	 wdZe/g4OVyZrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB957C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066904281.11611.11093671304217040655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1703418e4edc460426dcf4205149522e1c78f6772e68486485f4df84b26cf6
Date: Thu, 11 Jul 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720669042
