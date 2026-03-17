Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC3B396589
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773783894; cv=none; b=YLZkyg7y6m0NZ5NJajbvr1gqpalWOJt7uG3C3j4swxVhGWkYIcrnOAOj7DbKL14Q0Cu12JeurvMv5LyuMeLzS4UZAR7YW0ghYiFJPQ5c5twkMYRGgqpTaJfZeJkigfGiYfV6Kpvv5StcDBF11iPXwcyETa45b3Cda/pAr2Nlzv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773783894; c=relaxed/simple;
	bh=/BynC6CKrOJyD+YIbLTmjEn6j+vMm5PZs+BZar1dJuQ=;
	h=To:Subject:From:Message-Id:Date; b=Y7n56IeVPWsPm9s7VBGSdm3pwUz8MLxb3jqAh5Z6X/XMJneAAVfCwrmA8RcVNCyIjHgFHUzrBb8kc6kO2N+pOYXO2MyD2M8FzgR/KtuRKUXTs42Gd+f62ahRf2XsmALG39y4Q60ffWAlC56Zp7rohegiISa7hEqmC1xPSYfgaCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMTGHtdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMTGHtdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1092C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773783893;
	bh=/BynC6CKrOJyD+YIbLTmjEn6j+vMm5PZs+BZar1dJuQ=;
	h=To:Subject:From:Date:From;
	b=KMTGHtdHxZOmv6jdcLwSeHocAX5tUQLJE3aF0+LGG1E842Drw6UVoGghnZmrfWO3H
	 PvDRbCunsSlnPr+zxm2kEQewGqUo4F43aNeSO7PyvQPNL7rsNToWSLdVJ4d07GKDKH
	 SWLW+Ms1OqyZPEFwLAODe2DQXDtG617RKaXMZw7+WxX6jP37HotlXhftbxzpEDY4Lg
	 UOrA3+Xj1wg0c5yA9TGHCK7VZNG8LKOV2E9JrsCWdJPGtXKdTogwTMVwjTdhxbsw40
	 bSU5HsMdsTPpEnoAh3zBWrpJ3T/uM1MjmxUB4AvX1KslvHkDAgVkeAwkNEmXc8P3Rl
	 cs7Fh3DBjNdag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E1FF6E87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378389363.16781.16890548076911237222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98b4b832d9b029af000ae4b1cfa602aa74f01841ea130e21cdde0acba531d19
Date: Tue, 17 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773783893
