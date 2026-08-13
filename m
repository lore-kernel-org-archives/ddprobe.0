Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325F54908C6
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786639834; cv=none; b=BaTeayIYqo/BngviL3TwW9s0iFoiKHuPIQbSG3Z3xuB4q8hu4xENw9T0HxbhCk0B8LJMarrXfmpmhtBbD4wCblJsR/7691A4r6OPCT1l75IEE3sgJn3ytnUcwxQeNYQlA00n0BgxFIAG1Z6aqCCduHbfFXroaIwZzzmnAdyCCLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786639834; c=relaxed/simple;
	bh=MHmcKDvBVRxXmX1HXojs2x7GSfwiVWqI593NtfvTGxw=;
	h=To:Subject:From:Message-Id:Date; b=MhTO/hCZJmvcD+9O+z+E9GJ3LR5X8dDtO7Swx8x9DD5ly79lStidVojAj+HN9ZjKqMFbl46qyqQWkdD/JZ5Q0KEHf1SV4wkMWV0S0bmdn3GnOgeKxuJDcBCD0mFnX6IF6XGoTnJAJyP0G6twwrJq1HUILD0VGUxuCvfW8eS5tWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASbLh4T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASbLh4T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB6AC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786639833;
	bh=MHmcKDvBVRxXmX1HXojs2x7GSfwiVWqI593NtfvTGxw=;
	h=To:Subject:From:Date:From;
	b=ASbLh4T5EHVOzjyhbwFcKGHdvErfSPA6oDOPxxnrLNzB3/mBiKu8zRcgjEYHi322s
	 j1LWr25j4VT5Q+xup0cz2nD1ANPh6ynFes5amFdpmGi6J2ZkA5o17vJICgKFyPGpzx
	 BV9FUjhJ8I6jYsyo/PsRKNOJfYrmrmbWqVBgKyU2ENhG7pT+owjVB+UmkmlQvR3RT6
	 WuUSM0iMglFfgjtjkbxytWs/dN6b7JZOjaSYik09YvI9aF9HlzFv5FxSp6VxUvYh7X
	 czzA15j6uAZZxaN3+EYru9Bq9RBVqQD8t+rwfvXCdkyJtW+vQ2giK8wfvLZoSbq9PB
	 PxNWNBPvFwXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8031C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663983368.14147.16827618026911752542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc24f30bf3ec9d2ddf955a5528430b2df0c8ca02984f49902fa460afd5ddb5d
Date: Thu, 13 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786639833
