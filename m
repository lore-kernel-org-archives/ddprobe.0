Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5597A237180
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781982994; cv=none; b=WEbY3wlZSDmEu0Iv0G78dgkVWp3MIB0X13bV4C52qtQGLMTMDoDXE327eEchnFv/3O/5Z3j1yed6/3CAPqfkQhvdDVma+tmsZl2TP9PBcBmTs5TFDdgiQZnkNyBSX2SFRz3WdH0zzCxQTBCp2F+2hSJpJypP374KymX/Yqyjueo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781982994; c=relaxed/simple;
	bh=qgTQusxrs8Tb/bTb/UAP5Ks9coUSkB8gEkxiU3eWjxY=;
	h=To:Subject:From:Message-Id:Date; b=AaPyY188OKPCOCsbyH/74HM10Q6MWo85Xr4Wx6h56HR8t8YJMvZOKn03uah2OzGadegaZKa7TsCXs0cOoRuU8dJ/+i8ndYPxxEaPcrSTTBrXlgCI2wpURNUGBEenZqH9oyjLHb1cz6/uMWRY/cuyWa4M3OXF6Zld8qQs2RYeMh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLlf1F/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLlf1F/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64F3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781982993;
	bh=qgTQusxrs8Tb/bTb/UAP5Ks9coUSkB8gEkxiU3eWjxY=;
	h=To:Subject:From:Date:From;
	b=OLlf1F/51gryiWf8Uh0WJdmnNe9ErFEPUqdV080dzDbNBSkFSZqGfTMDUMVkoSnow
	 tBAW/lGYfIuAasB1WcdzjjLFtClwRk1uK+mhNuEIaVUn2PkqXK5xJeFQeS2TSU1Psl
	 LBI7QWJBED8+KjMY073oYEKiIZGYHKD7xkQlZS/eHjDR/2HgPCXuXK4uUaqCaU3Uxi
	 V5aIUqKLZZjKphIB20oVQsRTY4PwrpNmFc4N8rU6+saMbEdN6HZ/ePkcUYcxfo0ghd
	 gGHABqX1KMAr540aNHqXoIb0h6zVXOYbvmqDBpphbKBWavh+HtGB/4xVRt/XtSpvKu
	 j+l/s2Pr3yldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FEBCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198299370.12740.532612470117021397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0b28b6242f10288c205c53eb2f84882fd8ea883ad9721cdd8f1c5141b66959
Date: Sat, 20 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781982993
