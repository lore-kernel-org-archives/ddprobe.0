Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4178434F275
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779019834; cv=none; b=e8DgK9NU4DvARosf5tPwgtuumkiGsCryiSj7f8+GD4c9DIeZxv5/+38P40PT+x6UgjW1/jpEFdPS51zAcZuHY7Ya9KSed82ZHZtaBYpqMhC9pHnzh9wKcVK6qPhAdVeqAGYUW6JyThFhAOY1bHl7ZSlgckXujqiA26W0ehRjUcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779019834; c=relaxed/simple;
	bh=sCKnBM7t+Rxe5pBzf25+8XzpwOyu2O+8tQrGV4sl9oI=;
	h=To:Subject:From:Message-Id:Date; b=U1EzA1crCHFEruzCK3ml3Xj6XKgSLi1+4ivKcQk9PaxuVe+WdloZWcxPGWdt3wXE6SzMOsyR/QrAPfM+z74itojUusg3iiXXFtX8QMBNOGaCnP7w2wM3IStVBSuXb3j1YzsZOqSCvLPOxXEuoLgxhc6V7GeveQ8LDeKmuKqRILk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc2o1oHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc2o1oHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54CEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779019833;
	bh=sCKnBM7t+Rxe5pBzf25+8XzpwOyu2O+8tQrGV4sl9oI=;
	h=To:Subject:From:Date:From;
	b=lc2o1oHzcfn5kY71TPM3WheNV1HRWS2pjcuzA5tyL82WgXyv4QoWXwmW/RU3ZRAQ/
	 8+2nn//MPjhiEfAJj8SkQRVkPaC2ZZVIkStGv7AbFswp1Kzeig6qNdOI49qDAhWCzH
	 jDjy0ObE7vuKHyHToC8RBCM4vKW0e8NI5y9Bd3dnAxlAjlFT74OepM+SkH+n+EuKPB
	 KiIZx8y7tgt27qMKeb7jhDz+UB+uV2GxC41wCD3omE5CexqJuzQWTf8boinrk66PBd
	 cw7OFXApYwnas/cKf1q3kFHLlxhsgaEpE4B7kBjNW7q6ZdIiJy0p1QZhOmqBRU6zQr
	 xbUgm7fOjEJdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B041ACD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901983368.30753.13065311338865031340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fd51cfbb301f535e0950164d04a7a6c8601b85f1f22cc16f9f8b25ce9c4c12
Date: Sun, 17 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779019833
