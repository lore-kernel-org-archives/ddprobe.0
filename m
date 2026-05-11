Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06218EB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778529634; cv=none; b=SjxAUAgTOgDkS8Yt6iBDC+SgMaPBhscUxGR/CMpuCmF540cE0im137t8XL7mSdLz/+mtF/wxRvFqRnpAedDdJFPoaO2Vj7ixbgOsFl8PbIn8uhj4HFxt9HSpfyrDdIFL+RqrmVcRBwNDXO09QvVVnfYgVFrCryNM2nZJT5UUKa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778529634; c=relaxed/simple;
	bh=qVIhjlsCkOIQ9e0SXiKGbb082RXNWUBbxV/R8EUpqDs=;
	h=To:Subject:From:Message-Id:Date; b=cUDmZUy3jojPi6+5pAEJAwIJaUmoQodTCoVRuoEY3VTlEhtnHjcHLnP4NoaSJ+UL3+owIoErai7X1iIJJ/Fkkmn8BMn9dIcJn5z6qsQawYPc60WY9ywKDXrpt2LOva/bYUN1UXjA2dVkwXmnjRVy2/NMvHKoPGD4t2Oj7plZiPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHfHj8HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHfHj8HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2632C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778529633;
	bh=qVIhjlsCkOIQ9e0SXiKGbb082RXNWUBbxV/R8EUpqDs=;
	h=To:Subject:From:Date:From;
	b=OHfHj8HJueEw6VhS0X2sT9YJOagLpAaZ7ZHOlRMPOhvFPMOA1lLVumvoyd5OPY8Pi
	 tp/v7paqXNC0IXWlVHOgUZERyekY+yTPugYeBYV0/KAgZwaJt3D4TUy3t3uV+u6Hg4
	 c5zYDPAf/wkXNv+YTFouGAOCfqnFe5N/UOZnHQKlXKjdwUaR3ng7jXwgEYri5YR9fz
	 +qJBesf90rAewxlWhUtM3W/i6vESm8Xqu9TVhP+o5dmo/gsI6ATIBGU/Medhay5QmS
	 4evQfwdkjtM1hi6EfMTGuzKRsfPeOpHZqiJBIYJPg+qYjgiSGlElU3CJ1H9bzmRiBW
	 1EEgQdh1y/EGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D9BCD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852963369.30300.581480454772270022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c75415394d94edf5e7343980dd730ad946d590e7504dc28843c388ac2018c0
Date: Mon, 11 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778529633
