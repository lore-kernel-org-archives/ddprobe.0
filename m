Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0A41F5E6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756130994; cv=none; b=FISJjAXfWxQgqlEntTO/hlMztD+KgGLwMmSZvYI/vyVAxHqSyQXQmhaGTOuUiKaeKh3LYvTxlLeiiG26jv3i1WvmyKMWRPkob0r5n0nWts8ZT4aMSMhyk+pA5x7VJRUwIX5OFaCHD5xPB0naQERZ7ZTWPj5C33tgUJiJ8yI6yjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756130994; c=relaxed/simple;
	bh=/KzLSJMWkOubzOYnZ+1vSKKV2ioa4Jz2c5pRU10npNM=;
	h=To:Subject:From:Message-Id:Date; b=ssiwAlbpddNRjAY7Yy3UXdiEJ8KPupnDVRTSE1YXeg5wpVP1N9EIhzUc1yk7kRP+4NsYJF/M40NpTngAYEAKC+oyp2rGJuqjfDKMBTPsU/JUFzkEaK1CDhK9SCSIw3AJ86Nn2Z+F6CEe3OcmxgQpqqxOXkMv3AYBimZpJF0zVr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPekgBkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPekgBkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11BFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756130993;
	bh=/KzLSJMWkOubzOYnZ+1vSKKV2ioa4Jz2c5pRU10npNM=;
	h=To:Subject:From:Date:From;
	b=OPekgBkhnQ5zSkaAM9EX70C5MmNL6N6MnbmJOxe+4zhXBCqcXIc18iNm5jZXEhidh
	 YNKxYhQHn5c+Ya+quXBFyVsdnNvplrHPQwpmvpsqneCfnK1Tsp3c2OyNxYcODH3AeU
	 ixghwVYqjUd1gXKorfE2GuJ6lqDPtmYW7S8u+gjb9SRBxPNTQgkUQ6B3sZWBBXTzJT
	 iqSOAmf1RZjl0gVDdn2Ucx5L2lpUm6aH50frCgddJ5BDIAJIJNXTOyTbwiwlFS5vSC
	 mNtWykg6accS5bc7MDZgIYOYvaOVzRsCXDXty15SP1Da1T1LmyfJM1P2aSA/a9DTW4
	 ReWKQmtRUm25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BBCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613099357.24301.10975758613020325353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c9981fd3e95dce9f17d40afd466736feebebbbcedad3022f359b900b51f21c
Date: Mon, 25 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756130993
