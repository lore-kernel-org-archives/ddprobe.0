Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66E6233140
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750117793; cv=none; b=Cu1p+ZWarqFn8dh9e7I7DhfRGVCb9rzs2Ueo02oyVxfbVv7Ox+pXo+WVzqRrRyadcDdHJfjdIE7ndwiM8VExEso2FFHqrDCloeKbvw07oC+k36uDX7BIDbowpfxM1HHeGPxzSgn4228bMLn3q/COcuznGBJ0mnpn2U0ukpwqyVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750117793; c=relaxed/simple;
	bh=Yj+6f6HupNMC6fR7KTmquPcf57OGtE3OQxRQ1Jk6+QM=;
	h=To:Subject:From:Message-Id:Date; b=iCw1l311I/s8o0A/lWy0Fp2hNP62/p/bzo9VJpWSL7Y/EDeDZDC2Q+7d1+OsLYVhNVN7X7x8jeZ9N9/i7U8WzYQKgz6A0mR+bGAo8gmoMyLO5w1080/moaOBw695JGRj2yiX01Qt2BpJPoMJTkQhbP1lD0v+vqPs4UmqRD8YNFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6lxfiCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6lxfiCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F001C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750117793;
	bh=Yj+6f6HupNMC6fR7KTmquPcf57OGtE3OQxRQ1Jk6+QM=;
	h=To:Subject:From:Date:From;
	b=U6lxfiCjD2eSBuzVtwc33uZk5vOrTwKlNiSxEl13lE8538sBL0fr/M+aojE7MEvrQ
	 ZyH2ZeXrc4q3eGIa9BOVsHWodYEWoDm7iL8s2+T2WGaM68Doc+GPi7oKXk0PasPBup
	 0cEEOLYvQvGzMuGzSCea/uhe2DEXHAp5FwrtnLXmgEOQapr1Li3yhkyz/NZ85brFLd
	 eK4AQdhe44maM7qFQEmsyrTqt4Ti8msn+SywKaIFT0zGwC2pshK6SLRlxvIYIVIhEr
	 QLPnYx+KQZP8tGdjb+pC5mWuMub3+Z621+eVotIqx4JZzdvLnLae+2Sy957L9d2fCh
	 uLpyxngO+MkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE27C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011779357.25619.14964060044731925464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3375770fb566659e7712e55f6638ffd29f1e7b129566b12a929876b440a9d6
Date: Mon, 16 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750117793
