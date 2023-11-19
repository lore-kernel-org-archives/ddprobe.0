Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD8134D7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnGsIZfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D4A4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700419696;
	bh=auSD2fctqU6gXLOdInXjOGwnJ9OaGaD7L2OSzrlOoNs=;
	h=To:Subject:From:Date:From;
	b=fnGsIZfTjDGF+tACegBJpkn4fZ+6YojtEHrUQ5t0gI6epfc4KelqYxmVzxlZv8jPj
	 5Z9MwtDtcofSRC6WMzuzIds6orMKAANZWCatdlMF1vWC9LHyDPH1YgOTN/cbDMnoKm
	 +7pIM9m1EykKli1NscBIe9G48LIn5r3pS6KmuUMjtTxf6iBxvQaucZrhC699hquosG
	 pP7O3wftp9G4l+6wkmiuYi4RVq7YCWCYWuONnwOBaKDVTI/x2G8EQXTKeoyZvbbFMU
	 xHbRoLKB+uT/SAei4uaEwa3eqSUoa3UmuO9G+pK4J1gD4xyARyutjqCN13tCqgv715
	 DTR6oXP1Zlydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B68EC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170041969639.7396.17190966666899567911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4b5c2bf184e1b25e1c774c1d27828a4584a0b92689846013b57f04e20fa56f
Date: Sun, 19 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700419696
