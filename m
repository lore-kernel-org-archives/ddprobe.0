Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE772128823
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711424896; cv=none; b=DYriPQiPgc3zS4ICNf4UnN7RzQjFB6HwDT6MfN+BtLrMFTPMtXbcq8VTJAdwaWNLqtBHwmPMKji4bEECFLUTrrI5JPC81QAUTK4QyDySQt5r+VrS7FlMYNMqV7jhfq10v82XnIzffd3e34s1IqwgBjPSAe26NO3WcgIIebkc2Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711424896; c=relaxed/simple;
	bh=KUALZa5r2Bw2yVHLWs6hMfLLwpRrXmg8UQHItJ8Ylx0=;
	h=To:Subject:From:Message-Id:Date; b=hBXnanGF6TO2c9Xps37Kj7PBdpkACccof9q+yBC7Wff5LdnnIZE2ijCwWMYt2+aDmdSSAW3tygREozN2F7TYqeMyw/hHGafN88yZ+sKXsPhqd6PInUxI27SHhzTOrw7C5nDCejI0DBYYHxNg/zMnxwQTlcLwNpVAH654InmYZIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ3EO+sY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ3EO+sY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9038CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711424896;
	bh=KUALZa5r2Bw2yVHLWs6hMfLLwpRrXmg8UQHItJ8Ylx0=;
	h=To:Subject:From:Date:From;
	b=MJ3EO+sYTKGbNxcQitUUzJXWh7f8gfaqPAqA2X1Siry3r60qvp7FfJJ1eV8kf7R1z
	 tPEvVF19W+iR3h8drXqjP0qcDrN2plhFgJC88o2i2Ij73rqLUpXl6Tx/y+mLm27i+6
	 8yg6y86iWCTle2BGAw3ClJ2fshBr40iv3emhuwtMfatI4v6AJcAj/x3GMq5c6uZ3RK
	 7aEX6uQiKevrz2Bcrm3hebm9a972Jzz6GRyTns7jBKkuPmpbVXhaL5kVBhCG76sGs1
	 U6tWNTrJmDc99X/HUZGyfBkPk2DHbHQXcrVtw8lQkq1ExPDv90yBsm+iXHfhVXM6nu
	 cI3dxxmwD+05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DC4CC54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171142489645.26560.12098620055259783738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8842dd586a5a2e44f62f894330fe2db1cf63938adf908c89bf567e4508188e28
Date: Tue, 26 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711424896
