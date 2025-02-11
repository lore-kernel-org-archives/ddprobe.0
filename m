Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D31268FF2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 22:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739312455; cv=none; b=hK0UBbjQ7jowy+IQOKUP0olmkutot8amX8XA3sDT6KVdnvfFKFPkSw7U4DovTcanSvbOqIj5R/UXLA+alVJdcKVh7vqXDzW94xh7W7Y6r7p04MK1AfcGxjkq/1bDNBrW+nPD+X/MESDd0yiXWXrgXqmSyEsGdfLZU64SrLnH0vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739312455; c=relaxed/simple;
	bh=ickV0C2pfqGRtAy5uXle9It7YJncRIk6F7SYZdwGWRQ=;
	h=To:Subject:From:Message-Id:Date; b=LP9th1iF2XBr99zSEJ2m3JTOA/kuiobKZ7yItEB8yMnvkRGYwOdGXiQlmqamkIHFlPHdvNAK7Uo6ApVEhKPK6OtPdUe6ervltrlXZga/isi9B75FAPz1QT4jI+jpP3mZBl1fgwabHMCQDphAzzef+LZRV3iDSpZ+yNByjn2GtEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqIYUDli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqIYUDli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5F4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739312453;
	bh=ickV0C2pfqGRtAy5uXle9It7YJncRIk6F7SYZdwGWRQ=;
	h=To:Subject:From:Date:From;
	b=DqIYUDliCdYfLHgYFVw761SDfzkpOmdLvcHi8u7NbHwkhwdVof+sBZk37jzWr72k0
	 4Hm3oF99wWPOSjPhDAcFXdiOkHIma9gIIZ3x6WBQULEv/tu8oH6DvnYm40Avleg/JT
	 +fQaZ8R1FtvEoBRdx/W9qnR/oVJUMv3gPs3TubfI+pH7IiFBBLHqGmv9iqwgb0ecHp
	 zW5Icm9yAPDRUE2f9MmJapnpVCmL0h3oQSmiVm1nOjonZJ6unJGqirhs4n6EGjI9dw
	 4fi3drn6uiyM4nm1fuWMLHXOvXy9YTQv51MmBWSncjhMuBzBYTu0Kb9YRHdCTnCtyP
	 /r6ITzLxnS5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD1BC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173931245359.18345.5070316191597962299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425b53c849bea967828fee6da9b3daaab663493509b62901224c29f78285efa7
Date: Tue, 11 Feb 2025 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739312453
