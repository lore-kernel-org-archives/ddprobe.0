Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C348C07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719888923; cv=none; b=m+wpCxv7dfxWd5kSnF7CGX4GIAs4wCILfaMhrEWiPvyJ6PxnsIdCp54JwJ6nwTHUUE5208P9ttD09nS0VaCBh20dhh3Oc8BMMNvr9tUiHVnMBDYAfvo8fcoyGcIrMbZyUUGKvIPKZ+gm6cjk1PdXvYD52xcZEOaPHHFUJOa9wFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719888923; c=relaxed/simple;
	bh=rDjiIGuTsGp0TQ6Cxfg0mGsmDYCZnOGiy5yaxbC/nXU=;
	h=To:Subject:From:Message-Id:Date; b=dAJa5uYZAC0qragje9/Z2RnJ9DEetre+iVNp+hVSBOVDkzTgFyQgs6n57GPvTSYTIavUeOvSl7JHVSSXx8R11y6JLde7w4oR0/6Y5ZkiQtlIGdPINjZtCSeoIWJk8PZbP7fQ6SZc7z1d2iApoZqcezx8oQGdDpZCGz46v4HP84o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTEfebwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTEfebwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21D9C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719888922;
	bh=rDjiIGuTsGp0TQ6Cxfg0mGsmDYCZnOGiy5yaxbC/nXU=;
	h=To:Subject:From:Date:From;
	b=mTEfebwNqGW49w7LHEkyYZ7PlgCKKfNR25Bem1aTLTcQVX4wbJIjpNlA/wcjDjYCH
	 tcpZtz/Uui1ehSEEHrRA2XQVPjlkvGwfZ7lk4My+GMh5KA/8Iex2tq+XmSuTnInLvO
	 PIFPX6yNGqhkE902PMFAYBMaRTPBqCTt4iTjVHqcasC+sJptJbUP0uLslDo4mOuw29
	 uUMFOWwNBY01IjJCMJke6H9/UZu+lk5KDnUu0KJK/XI2jmKxgTcAVFHvYawl8hj5FK
	 n654jRLwL+sw6vRYNRMK9/ErPgvCCT2HckB0JR5u7SKJsass4sRa5TUKC2QbmxpvC8
	 lBERYcAsyQ4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08B6C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988892278.9816.15090234791052870918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a7d4cfe205c5d4968965a8b51686a77740feb042e0d1ac2b74b0cf02b155e1
Date: Tue, 02 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719888922
