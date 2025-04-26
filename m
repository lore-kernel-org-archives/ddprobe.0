Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F77C86348
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745710794; cv=none; b=XSK86rvubEThJjmEQJ69z8jvaTuTcqvPI/JHkdIYsmSG+mKtiTXwf9XNDssHEv8owI87kArKA7xopaHtpUfTDEqiPy1vzb8PoyFrIZFWZAq9a+Je3u6frIsXDoHf9lrpfmYq8/S7AluOjwC5ziQwmHGHa5EdXq470NCh1I8wTls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745710794; c=relaxed/simple;
	bh=lLOksbBCmFrB7+MTIWQlx0jZCGo9FIZSDtl2n76MnIE=;
	h=To:Subject:From:Message-Id:Date; b=Uy7bqpVQjLyQyZ7cxzMzr/rqRnyznyDu+FQTJM9rGwHQkJKrir08eNhTn6ri9J6LgHKnprwxXmqbLo6TuqvQ33bNupxLLoj9yMuDF5P+3T1WzLFq2yRNq4lkaLn+JCBOfCQdkhbgFGOwYEkm9g7EO4V4eq1Dn1f3iNkLtDVjBic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mreok2Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mreok2Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A04C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745710793;
	bh=lLOksbBCmFrB7+MTIWQlx0jZCGo9FIZSDtl2n76MnIE=;
	h=To:Subject:From:Date:From;
	b=Mreok2Bg23+VewWoshYext/YLX9TdO9qubcwR/OQSJ95O+XQLganqccZI40N8Vvou
	 FwiA+rSk+GMAkihle7HF2jfx2KUvvbWBVSBbclL6wYLZLKSonOjGPeoyQYKQodpX9s
	 qKlr2FqenTqnGfy9tPxz4r3/GTSYghH85fQrwnNuUecQixqFEBkPAj2ZpfBPXAuxCD
	 gw/dVYuf4yZuq5rI+r2eD4ygvlGg4091xLe+QMPTHp4HQ64n4uLj45U4Q74aGzrIlv
	 rgPnPEa+4xPznXIrOu8LOsSjUzUghKZZR9gw3r82vhGQRWTtoIgrNafOiwtJO5hpAd
	 uOHaH12RysV/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A23C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571079357.3579.5880744449238697497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cc3200577c8c887477a7748e4a8f2849826220503340fc0a3ac8762c9662cc
Date: Sat, 26 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745710793
