Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551C332FA2B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781801794; cv=none; b=UE9Wy9SWScvwfMFwRdm7dQjrsuAVfRkqrrChMCJwhvZS6rlZDLrFhdxelrCbn0emm4Jyn/hB9MvP8a7/CqmVrNl0bHF7mFZT4WCeJszMx9B1wxbNelFZ863wEwDH16vUtLxYJ5A8N42nrQ1eJMGfWyViOofaKgTyW9eEOgudexU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781801794; c=relaxed/simple;
	bh=0T+9YtLkLk19MoXvmIl7Wq8XH1HBxJboqmFTU/30dQo=;
	h=To:Subject:From:Message-Id:Date; b=aoTeuiavFl1LIklBNThchbapzmCcOg8EE9Czg+g8dJQdGkZMI3Mp+PgyRCia6l7SLu/bbB+lGlTrTn0975q2AL3cLAPThAYDdXmHtwDnjv0G4ArtgiMU8qlhnz45R3LDVd9ygKh53QyAf/1Y7yE0Q9zto5/pTlgjIK+n8LwcXLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv/unr9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv/unr9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46F5C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781801793;
	bh=0T+9YtLkLk19MoXvmIl7Wq8XH1HBxJboqmFTU/30dQo=;
	h=To:Subject:From:Date:From;
	b=Nv/unr9JK/1EG8J56ZmWcrFnYHF3+iqtnI3S2+o/gsg/b8Vv+PytAUp1/ieFcKpIc
	 5Jnh72RojTgu4Y3aj9A3kgrGAX3uFDei9sDHiQbp8/ZpKq2CjiCU7389sZD0jaZYd5
	 b5OOlx1Jj+yvAxs3fZTC/TVwcLHypxbaWErH7ThAaUYwGufOpA5fMm5THx4UpXHJVI
	 F07fTsihKn3y151EDEsEbVb1m0z3emy/t7KH164g7C3I8hEUvO4I5SgmE5R9qaAqAZ
	 iyoKghEjA1XPSOIAFYYCISMSOdWRAzWfZgNQ3oLvD5mb4/9ctv1gMeYQLcZrco1ftb
	 QRjcbSJk3SAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B517ACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180179373.21209.6088758099644203106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee51f5c43f74d9dc9bca2d8346ba404997d1e2d1293cf756a48833aeb2f4f10
Date: Thu, 18 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781801793
