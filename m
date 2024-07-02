Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613DD82D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719918923; cv=none; b=YsfjmYwFi7wljKmSXTneis4scMlam7pt+aL5BFzDAg0pXKOxmo9IIxFV36lQarBcUvdI819jne6wedavPsgt6RgI7elFezzCbncMXIlZlbFzfLiQ/51fgzN94Datfd+ANYvpRboA4PTtDIBaHGTBMaMjCpgdhZ/VE6Yxd/ViaoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719918923; c=relaxed/simple;
	bh=sE9xkCrazTqSrlf81CbKupBIz+uiEyujOgWAWeX/H/A=;
	h=To:Subject:From:Message-Id:Date; b=sPfs9bVyyPhKcDQcgUSb5auv+ArcDQRJQvYgjpNk2cx9zJzwWolfSfNKHgDRr+maMgdCpeXdp0LcyW8Njov8Xy591lPA3kPNA50qGU6j+ZiG6w7d5RY5l7Sew3X79N7Rs8qAKdO82lmCDzPhTEayGzL/eURfh+Y1ufBVDJC6YxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4iNWQUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4iNWQUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE8E8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719918923;
	bh=sE9xkCrazTqSrlf81CbKupBIz+uiEyujOgWAWeX/H/A=;
	h=To:Subject:From:Date:From;
	b=P4iNWQUY1h24d8a4JhgGxu4Qmokdb5aU+mOpf5NC/M+WjMn1DyfqTAv4HTthekPwC
	 FB+YQRXq8B0CFnCrCwkLZqsQ2NOYP/bPVWvyXaz8E5sOwMjMuLNXo43mfKD3PN0YCx
	 3dPxZT98T6ibVElDfdVpmBVM6aHu5In7jCdSPegDH1JmPZaRF6OuRGselVMoHuRfVW
	 pu31WUTO9Dco7ZyTPsBtTVbTWow74/V3RrcFUjqgl8At6GhB2y228uqt/zb9VCB1tZ
	 xeLmfoEtcNS88PPkTIR1HEj37cDn4AHzyKGmme1LQU9fZimxusCw6a3Ez/7TCvCpKa
	 VqZh+Nq85FKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D568AC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991892284.13889.2730952084147266006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71c32bf0453332866c4bf865d273873872cb19f498b72c6165756a816ebc93d
Date: Tue, 02 Jul 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719918922
