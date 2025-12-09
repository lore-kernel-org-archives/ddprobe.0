Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6C41C84D7
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765253574; cv=none; b=t2P6vwS4EJqgSvKHUN3zKYI7ml/POrkC4xt8qJ1JAHknsvbnSMI3VIjmk9EbTSsoz0SNekz/E9KlUQkMKMHq5UAXqbR4omE/Id/ij/ac/CwKR/iwnMPfgE6AkbHBMSa36ZGFK3Ppv9t+PmNQYDscgoEGEa+l3JLbtwgm87gLEzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765253574; c=relaxed/simple;
	bh=J6zbw4wl2ti7hyxNybzjKJNBrHsCoTvq0oiMLfAZaso=;
	h=To:Subject:From:Message-Id:Date; b=mwOc0TDn/QOzOMM/Bk3IgKlg9Di0s3blJQMwb6LXFHI+8qKgWd9hkIaA5k1lVPzH362O4+fjMuor7TJi4RwOQ2sUNmOHBwcrAd6JqUt7hDybdudSRkmLh5yER2IQwdBZUVXL/Fizp3DtyN+O4xZsOs24szldr1HKgG3MXw5qcuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1mFRoQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1mFRoQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4A6C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765253573;
	bh=J6zbw4wl2ti7hyxNybzjKJNBrHsCoTvq0oiMLfAZaso=;
	h=To:Subject:From:Date:From;
	b=l1mFRoQBY76Hv/FYf2QRRysosq2i1wH6Iw/6YKtJ4QIp/zQti4uULKNP6ottyZXyd
	 Ml3T8pk+DJ2836nHVaNijIvrLEk1Hz3ssghyDK97G295wKgrSHneRKXxTq8RuSpbbA
	 2uNeSUPH0gZxY8Datw2Ky1LU9bmJ26az5yn2oVuvxQyb1cFhnytFbg5N+BlfGZw3xC
	 qBbt9naj7s4BU1jBXwAHqpAAvG7PcuVP4vSZBFAAPpGFZt8/jllYqnTirkO5XlwHTP
	 dWmtHCj3tABCuC8H//8VV0Ey5urXjqq6d25wmT2gC9deHTWJA5mreG0XMkT0F/mcdB
	 9MaU3i2JLTQTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BAD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525357358.32527.15104771953136972618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712cbb796b3dc36502e440a98c37ad4d0285c04a934b9f7e04a3d7b4136e3f34
Date: Tue, 09 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765253573
