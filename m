Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1419010FD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749419394; cv=none; b=giseRFsjYf70Nr2VcZZjkoURpcSsFk8NPDTMALtdEl9MIb1FMHDu373gb7Vu8r5KK7pAR4wh/9x22Nby4Q/Jzvw9GV3RZQRUQVgULRTn7AqivwLTNebjqFndm/mcml4kKsCxAtgmd/HgLtmqPbWsfzJqzUGtbadYQV/0ij+xSKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749419394; c=relaxed/simple;
	bh=WeUt6IkdyK6+C8ysyqhSWAzduNwkhLJrUn6bX++zMrE=;
	h=To:Subject:From:Message-Id:Date; b=VFul841y4TR+RxXrFICuq2aru7eElzI5zVDeqk+SOqGyMUcgia8bWNPM0Xcs9FiGoNp0JHfDV14vGPi+JkVHRdX+IgCFa3zqySp/Ms1pz+4zGC1SgLfMRQe5/2ORd8W0YBjvSNRL878vxMsixkSa+8EeyO3Wc2eJ0Vu+A7dcXqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJy8ae09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJy8ae09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A136EC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749419393;
	bh=WeUt6IkdyK6+C8ysyqhSWAzduNwkhLJrUn6bX++zMrE=;
	h=To:Subject:From:Date:From;
	b=mJy8ae09rNP20JvgW9IAdDrjkXARnsuM/9dTn8wHeumBTOVNQoOl/EUcRVsvzGWHx
	 Z7qQg0J5Jv6tKy5+i7Chk01uH4NZ1tKasgvBwDdyQMS50fQzvQsg113woxfTgGP+Vr
	 58AfciZ9lXjeR2k1CCXvxFhSgMLnVuJcRVcFAZYi+Y9IsIdOrDmTugBFTvms/2QISj
	 B2p1+mZDU8VVfhMAmtTEWqNIFR2EUqqxtixf1i3CxG8uDKiQxe9V/CD1PeHHks4fE7
	 ctCqB0t4g0iBtF/JJFtuiykb9rCHZylnkbOLVo2vfDnKWwOq9ErP7kBKSoksThK/rf
	 2e6pP6da/QktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F1C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941939358.2659.5728419529940943269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bb9dba4cef9f05f4a6c31342e1eabcf3712de069880de246f8632f7751fd66
Date: Sun, 08 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749419393
