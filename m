Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE7A387572
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775601934; cv=none; b=VAmz7VeMWcZJjb2KxQUw/f7I89Ep0JD7a1UDVvJ9Tmgu0w/O7ARDydssFxjLqQA1MJhIiqt03tJ8JbzE9aC0JJhs58uyem7MJZeCSnJEwmrS5l+VNAtC4M/QPwLIBs0xtKZcY7GmJCNihuRzJIkjOMi24yR+K/67X6TW0fjsZJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775601934; c=relaxed/simple;
	bh=rE8eKFUnF2Dp/o/HgCXsRRTJnsv86FrGR7/CDVYS260=;
	h=To:Subject:From:Message-Id:Date; b=fdbM4JKVNCWG8+xKzKypCxfYMYqSJk08hwAWJxyzzQPR1y6ZBCUl8EvT3GW3BioYkO+/VnfaAZbh8Cgb0MSRDno5T5lJpIC4hi+4/fHDVXEg5rKciErKodbws5hA9zMmCa16FLserqV7yMeCum0xMLoIJXEd232d3AC/lCKGUvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfkIZ3cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfkIZ3cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44301C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775601934;
	bh=rE8eKFUnF2Dp/o/HgCXsRRTJnsv86FrGR7/CDVYS260=;
	h=To:Subject:From:Date:From;
	b=TfkIZ3cG8BkQ52ZB7G06dTw0i0Ct5mjqR8JOMKjYo3xpHadDOipdgbkm0L+yrzo6a
	 jH5BCyGcLKT2RvUg+Fg/wli+jzw9TkkGOpfK8Ze1O8S9aXQZ8A7WXOiOkYgjphdLk2
	 ru5bkLKr2EyqVWvJjQfP1u24QAnEEq+XxIAmdd/fUgAYVOwFf3P+XxCGSy1Ju5kxwW
	 exK+TXs7A7Zq0aCTPKL07o9bDAOePx4HfcIZb3PrjwXOC8xL8JjP1ErTfkVZWX/5X+
	 TotljYD2I2Dgw79bI46wUqyfbHKMqsc4dAVymDMxU2hXIRAJssOpsPhOrAfNcFqjkI
	 HSlOAO7aObH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6459FEEF55
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560193390.920.12599674128092463105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838a368c846adde04e46fbb703b6fc3fe05c423e44a01f0497378ccdaeee5440
Date: Tue, 07 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775601933
