Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3029724336D
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778873434; cv=none; b=nYy26BAHnauWxj/JTVVDYiZ4MugvZTt8z6AEp2as49Sb5CJ/aQy0pRBsO98H74JxqOXB5pN/v6mygODDnKTe23w8PkzQIUELm4vgJ9NCg+/pl2HCTU2ZY2Po3IOLNVLUsLwRLnlhFpVdNn5mKcrgBhlt3QWK0PTOS4EdnovlA3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778873434; c=relaxed/simple;
	bh=yB3iayBom7UF3cI1XCW8Hbv3/Cha2RXu0iNIYvFmFYo=;
	h=To:Subject:From:Message-Id:Date; b=U6M8v+4ExK+kyWN1arQqWgt5Ncp+gNpxODx9LGamq2HijTaNirwVXNuvy89QByP07+meXmxyqqaAMMCZl4Uyi0fEaaLv3C9oDdzZas47vs1hOyvwXlAqaKbjViA2lmbX5ZaonvtGCQK9offq2945ILxSieUN4GNYa2bFrKqwuB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKPSnBPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKPSnBPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BDBC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778873433;
	bh=yB3iayBom7UF3cI1XCW8Hbv3/Cha2RXu0iNIYvFmFYo=;
	h=To:Subject:From:Date:From;
	b=rKPSnBPeCXqi5akrcp6krf09IrEkwYiQNPg4qqEWlLap6c8qqcyGRDKMYpzKbGNgl
	 C+IwRA7meRcBHXqdBIB3oVJdxlxcOlxdsyYwiwQt/HoFCGVgcV1rqnP+cCzCHVdnEC
	 tdR1E30FuPS0aBlvm0n6Yb05GGpN3bEDyzz6dF12bsNW2guQd6ysyJlAZ6czA9/d65
	 hoq+OoJ+4aVLPR97ILAHWXcy75dn2a6YudBGoGMScQ657p3N6vOQkrnj1XXAXWDCmz
	 4Sy0M3Xn5L8MfoweboHhtjjOVEQuMpDwI/o5UQqUF5eHqrYqOAvMz7jDkr9hU3mYwN
	 BSpo8Qbb+fIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EECD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887343368.10020.16308668158304928740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2693495193ca5f00bb698564b472a8f18a78d977288c35775b77a0fe9d2ce2ef
Date: Fri, 15 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778873433
