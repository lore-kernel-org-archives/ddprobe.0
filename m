Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B331D72B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766478834; cv=none; b=DdUrNfV5QUndbXU5VoQjBxEujJ/8K1y0hXC2i6yXq5fpBhsjr7ZAThTJLVHuRGJcDOdRyAhRDVBAbNFk5K+aTi4WysXbysbNJx8JWrI2jq0iNo80dUIjrfacy9zyBwBdupc4OFSNeNEd4kp7PdVK90qpLeS/jKZ4L2OwI9ywgqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766478834; c=relaxed/simple;
	bh=zoJC7/XHQd+ux58/wHrfTMuIRXDAfGzF83xE/SE4imQ=;
	h=To:Subject:From:Message-Id:Date; b=UYPz218S0auXJuLCDSNxeoo7SaFP6Wq22BLUZgPODF+Ee7t4L5sNCxrk3/4QWPfhYFm9Za30xRDx+13XErB20FukFhrF/POp3L9+bAB0WTeTKBe3AWAfNjKmBNT++5qAPtDKFmYne7uUS1QffbjXBwyAzps+LfgcLmG0KHtrwY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3zdOALw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3zdOALw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766478833;
	bh=zoJC7/XHQd+ux58/wHrfTMuIRXDAfGzF83xE/SE4imQ=;
	h=To:Subject:From:Date:From;
	b=i3zdOALwFSvJPgJUjIslmslcvAul9OC+zIjxc62kxjPtS5IBG0BTQG7ZYRV7zKju6
	 QP2pti/9bv1qSAgLQex1uLYmXv2hN7t+N+j+mkUcJOXgFUjStOtYqqiJLC6qM3Yihn
	 RBvfp6RqfcEqa1kqhDzvC+8kLTPnoLmk+6XdIhtj+H9BwtlPQ85ksm7+/KBqlHxUoD
	 u8NyVAmwRVowPLbu6PNxF+vkw877D9FFdilJd4yWCFOr3xeZe4pvCTB0UvphDI2rZv
	 O9ipPIHWoUJSIItOQn14hw4gHQisgj+M3fA3HpYIkofidYBLYFu1n9faicGtDZ+TsK
	 C64zHm8pcSHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94657E6F06C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647883357.28894.12320707437343439776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d8b50a4c0584f9144adf608076ceea412aaf042352c0d303837fb47953d4e6
Date: Tue, 23 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766478833
