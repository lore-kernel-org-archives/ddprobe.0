Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAED7125CC
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712108897; cv=none; b=rWH6hXye3gHGiSFgv+aheVkiqcbt+K+GYEgaQZaWEfkpNzBqSiO87jJ7qqWCNfWCJc2s5x2gGO6/hxrY5RcC5CcFw72qyVsJ9TMqI9aMWcfinG/00jgjMh0ZXOgJNNYCW6MTQGc4RYhGso5/f07/kuuc+QQNoctr5zzfPMMYX9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712108897; c=relaxed/simple;
	bh=/ka61O7LUVICTJ9wrd5cph0kU+t2Fmk8CTeGDg4zJdU=;
	h=To:Subject:From:Message-Id:Date; b=EGx/iTc/b5AyMDnsDl2EiQvKJn5e4PFnyIeFuB7AsRLGU7kCTTg42olRMP4ZnLTw8+HGwV9edrzNZOWmLYc2nBFB7VKL7jEcAPpZ1/MH6qjzdI19rfbjL24bEg4qE7b2ydEcA6EeTibcjiI3iB/Q5TbATjyKhELan3pFkL6bz0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPR6xKk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPR6xKk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8DDC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712108896;
	bh=/ka61O7LUVICTJ9wrd5cph0kU+t2Fmk8CTeGDg4zJdU=;
	h=To:Subject:From:Date:From;
	b=gPR6xKk5weLKKNdNrpLuegmefSHeHmgER8ZMCFDQSzZiZAMQgHHT4MMjuqZ7qFKjc
	 Rys6Yk9qfSs2Whe31SwKhsSJ+dgKJONH8gkNLziRNlazz0Phbvu3Za9L7+Wu9AlU7o
	 vFTZ92YmljDS4I20xMjSSfm+l1qOuo/6sQfTzZJFaOSM2efRmntbRRXplOBIcdxRDy
	 HBM0IapEfdU2w3HBF4XOSplHTPZeC6qZwGyKmDZ8p6gRl3SoU66SLu4Hxd9L9vVHjY
	 ronFgTwZD4o1LjESy9CJTFW5+rGYjdtVnpCIyB+2trV6x7/uud83DfmASSZQZ6kQu0
	 Ftf/dUafJR2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF12CD11C2
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210889641.5822.8140856055870681089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8bd530005010346e004aa21fdb7a658dde57486dbbd6458d17b3bd7cc8e911d
Date: Wed, 03 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712108896
