Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526E2E974E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760672394; cv=none; b=cGmC98DgyEevEXsesy31Ef9OGJZ+7hU89cmfeCIhEBt9ewEUhdBKK568wjZXeWdoW+TBuBlxzqt2myQ6659/cTxx2De27UbJ4oovBm7ZJplBu3r/TDM/FczUZZ4Wu+NuRwvEiw23T91IfjJT0FuLiWY+moiLTCBuuRDm2BjsIpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760672394; c=relaxed/simple;
	bh=Rz/Gxxrns9gaMvij+LsKGMq9aPei01AedjIJJMq5Kok=;
	h=To:Subject:From:Message-Id:Date; b=F9ArqFSyArtAEzNCiAYthypyVb7bdJ5/piY0kJgDHjB3vopp8poMb9RJc/WK6FqU/bWj7YIJa/tMEk5kcEUaoHZnV2dBSSDBLY35KXlNCNjMma4e7pVOFaywcfkrkk1HN2pxHw50Vp9yhQ9yDi+U/aIXf9rRYRWT+09K6+QmxWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOG1Nyqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOG1Nyqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760672393;
	bh=Rz/Gxxrns9gaMvij+LsKGMq9aPei01AedjIJJMq5Kok=;
	h=To:Subject:From:Date:From;
	b=oOG1NyqqTdddE0mUEQUNl9tyyKvhtIGolAItz2ObDaXpLjcI5IbJEn4r4QbeLDKel
	 xwq+VOKVgjJ3uj4n5bmqRJD/0r3uQuE+4txHJGZodYupIo9emBc80pHJWfxXz+Mr8c
	 XJkmWltE1BXyufavcSc8KtuL2w/BK5PZVbzj1W+F4KH0wBV5/cJQWBB3nbun2BepS+
	 LRGa9iy1ar9BnD3iJtTkXWQrUF32vRX3PSjDsSftIIkshttxXkiLwjxOjUadubb5j6
	 j2aY8cQoJy+G8ghjxrkRvzLE11cL6mZj6IUbMjHg+lTXgqMuy18V2e5K0PGOYhBWFQ
	 VTMVaeDQi3pIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33BCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067239357.18059.6821481726488571238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f6b5a151ae904fe6eaeb6e3e49dba135ea445525630adf36859daab1bb2ac5
Date: Fri, 17 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760672393
