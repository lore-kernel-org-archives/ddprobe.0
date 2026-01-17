Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B869475
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768668834; cv=none; b=qMRP+NkStYyx7M/Ub0ZXGPJNjlvsFp27tvrfqjfOHhqEuH4KOC4pqVi9S34sCqzAH6jz+gVqfnC4GMrFIScUlNJ6C/8DEss3XuP4WXE02qGlRBPt1cy/R8j8WOiqJ407NUAZDo6LPVOyZtMgfJGZ6yqo9Uu0U1CGUw9QLuNYhw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768668834; c=relaxed/simple;
	bh=7zgcg+HwAIdc4OwSWiXxp7U0fwWBCvCDF1vDAGFRODk=;
	h=To:Subject:From:Message-Id:Date; b=ezmFic3W+7SooWKt7yS6PNBHw8CAYg8OjmSTKdBDJrVSI3Rw2doITVhKe43ZVKKLxKev9Bcz2sLPJzITqv61Or9JQsz+65Bm42ScGIKc6a0rEcJ43GjP3l34cqTR6ZijNkOvaPtGynK1eGRKI7q03yOyvwtvWaFp/4jZEG3d2zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnvp0qPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnvp0qPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768668833;
	bh=7zgcg+HwAIdc4OwSWiXxp7U0fwWBCvCDF1vDAGFRODk=;
	h=To:Subject:From:Date:From;
	b=Cnvp0qPhrsypM24AGJR5h6wsyIv2ux2bUseahstINxsTlsgm82k4s6Perlg/93sZS
	 g3kOoT/MEM1Tq3enH48URZdd7RWvfIEmAkNRxs6NBFDG2Cxk9wMMPYF6POfOJgJmIH
	 FFNAi8tBuXuRF+JN0x02GhU4TNnzQDxsp1oOdHC+8Nv2fYmb1S0DEypPU1DahfORb/
	 91+8eVVPx740v0s1e3YZ9vwRKzZ1ZijkemQQkVD0RBBWd+bgRVdpBxaAQVIrnj5V/M
	 Kjxlrv9NKYsTIm9MC0eYK1Jz6MKeMqF5aGqhmnzzhd0q89tB0/7zdxrWnLh/C06C1F
	 WOErbJ7NDjPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB2C98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866883358.24925.12376454362664950232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccd9850a61f7996adc4738bb048f77820c3cb02921bfacd5517349a2ee65610
Date: Sat, 17 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768668833
