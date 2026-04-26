Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA3635898
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777219054; cv=none; b=Ll8X60aRv5r0xHhPlWLakPsCumlq5o1+GgzIvTev4K9Qs6KZi0pHQsmRZN07O9ks2V7nH+C9yAfjbVOAiEeIWA0XmZ+dnnTWAcpW0b6ebh0lBeKYgx31I2HMkFntB9R5oWzJpiZ834Kh1+MqAQT5KTyltla8veBiNWXuBi56HdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777219054; c=relaxed/simple;
	bh=lJNf/M7/HBvJJGE9FyI4nyqXK+L4ObYUdJVA1a3X9SM=;
	h=To:Subject:From:Message-Id:Date; b=Knd2KOeIcOUxeivAVDwiAyolTSvRSW3BNRauQysw+D52dA13sSr52Cc1mlbVkEHJdnbuCHhGj6rOqDqg9SaIKTIldSQzvQ6UT8M0HZIKPe+anF+vkJj7XAG+LaWQ7CTljvcBf7VbohFJFpscKH2urToTcxnuuP/Dm9NgOkQNbKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6kka/pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6kka/pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25ABC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777219053;
	bh=lJNf/M7/HBvJJGE9FyI4nyqXK+L4ObYUdJVA1a3X9SM=;
	h=To:Subject:From:Date:From;
	b=g6kka/pGU9mE8cZ+iFOgJAMdH3tojQ7/9qHxgb8vec7dqI96Rr+htyZL9wdzs0aYz
	 Ll4k/erlft48B/aOMYz7/K4EZyHtbkjpPqZSE0QPI+ttHFxt4zqKSMlGKTzh4pqHsT
	 iEQIwqYBJR98yV3XOHs4Bs6Z7OXXFytaT9nKtsCir6t72G9MAQZoWxVTVNShFppuKP
	 7ojnubhvIpiz/z5NAPyz97QCA5YjvJNx7B3YZHDjv/poaNTZS2dJQqZwvtuuRQTV9e
	 ZHAf5uoWftYyEhN4qScGqqhD4Le8UJ0XQTa8wZ7tbMc3IHmiFd/6zpHVGell4KLQDp
	 nNmt9MACxLoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11D0FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721905369.8011.17451011894218273836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4430fd2fa31769f5611d7fd3075f50e440f245bb90ce22f0bf06ff372c233fc
Date: Sun, 26 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777219053
