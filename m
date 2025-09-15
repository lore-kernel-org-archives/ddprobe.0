Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97E729C339
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757971793; cv=none; b=dSXJQpxhHo+Znc+eV0hQK4HbK7SJRlfrZlgwQqG6AOzXcH5Qjbj5BLNQGHd6qZWQwaSqKkDrZZ/7BIZ7U3M+a2icPODw1wp3jwQ/Aj+BfNjaZKVYGcZNp8j6g+/3im2bKc1zaADlUjWJk1V2cmJrZkDxNIH2IWmdT6GecNWQDrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757971793; c=relaxed/simple;
	bh=+RxuO5+UxkyYLK9v4CDuBYADYDXevajCN4HNVxhqYhA=;
	h=To:Subject:From:Message-Id:Date; b=SDl0xPkXrce+TddiPLFdOLg/3Hje97cRGevNTdc4ZrfWOrEltY90NHmjZRligF8aiiPsxeXDplC3QphpNPnIphYQKgPe206mdrhMzmZr4szZwRYXONrGsFguI41wrXPlsXHEX/K/DCemF/sfw3sflXEqt71FBlju8D2RBSxE8cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlwWG8kH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlwWG8kH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757971793;
	bh=+RxuO5+UxkyYLK9v4CDuBYADYDXevajCN4HNVxhqYhA=;
	h=To:Subject:From:Date:From;
	b=RlwWG8kHFKwIG+fNhf6Cw6y1gFU70LM4g6+3U5E5IaeCbGvg7EZUL6QlyaUL3/lxz
	 EQn9FIbxVWemQCnCTl/HAcJP/F5g6lTsaYm4/LjIuvYYDmcPTm5stuBHqCsXA5PlsN
	 Y2LbrF9BRQCUmDy3RpvIoS+DRGvTdyZ2IzGkAJeP/HFZAI8Bb+uiuBLYGfyGL8zZuK
	 175HGX3Oj21/KX8a5NK90cLYLFP76YZPpFT2IkISamZWAyIJ2oG21m2qkKOzTErxml
	 hoaIzFWfmzzQ7OAs3p5uf+Hq+hxyIPiKA8zTFHi9mNnsjDQlMUnQWe05bS1czyKBLR
	 ReHWFkbNGBnGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF2CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797179359.21749.9614096897107661385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02b8765c2bad15f95b1127c1af4ebddaf5aea5760cb7c29ea4d649dcb15ca10
Date: Mon, 15 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757971793
