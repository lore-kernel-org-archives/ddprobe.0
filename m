Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C6DDA8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wvlu3//E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C82C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700287696;
	bh=++pTumLFJxI5ZmeFy+qvT+38HCP2IXjomjWYGMkdJTo=;
	h=To:Subject:From:Date:From;
	b=Wvlu3//En/+bTVHiXvmv4Jcaxf+X2yWiOp50rS5/9mpdi8At8BRBWdIC3tKmTgypL
	 3ynLUy5Pq3oQIMAOrrG9cDDk3ryF7V2cukQEhnPm0u0lnitYO6PTO1d57vKXIOf9AL
	 TWUVXQYAWh4oMLacnPAUjPxSCqeSyn3z7svAQUrHpsRRJuBgkyw8NfMyc0mz9qinZK
	 emu41Hs9zk7CynRXcxLqFqt3D3j1+E3YUUebEw7Ac/iUDuA5O4Y+q+ptY2KmhPEqOT
	 u2QiJ0iUUSnt/she3lG4VcJ/7NqLPSy93GoKLhftreF2kRrUCGeT0g5QlWQElYQOko
	 PiHkZF8uyXT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62ECBC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170028769637.3661.15600109944864244564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9290869129b770caab608f86204cbe6334e7c436051d3667728cdca5e6634723
Date: Sat, 18 Nov 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700287696
