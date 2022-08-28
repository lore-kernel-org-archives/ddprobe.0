Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91137C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714A4C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661658652;
	bh=MGiTDPGS0OV4BwDK3Te+2Pyy1Ngr+TG5O+iaU8CAX+w=;
	h=To:Subject:From:Date:From;
	b=UnJaSHRiOmLi/9Q1WUgw+6P7ub6XHMziKBQuWoFufoe9Ceph1A36cjvnVPQU9rFIG
	 j3kcsnHuTIEX+mh4vLZg6HoWBFcPr2CBksAAdeagUR6m94L83Xh8x+KYZseHkXyDlg
	 d4mUTPQxbustwhOPtPJYa6cHnBLHo+6yi6mE5hE1c9gDHsuLuAzAZlOhVXUVy1QELj
	 ZhQL0KoVxbPvp8WyD2pJT0w9tixL5Dvdlb5drjF/TgD25rP2SnRfew2MruETcfVPpc
	 P1tm2tQDGgLrRODKH7qCWgbPfUdE2q1rU3BR9OgeCUa8VTTAAqNxMM8NqTue5lf7W6
	 VmY63uxozmojQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E02C0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165865231.7361.7436989055406683345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a449654d4489a894364bb59f0ab93e927246e3bfbe69ba7a0fefc1fd0ee00a8e
Date: Sun, 28 Aug 2022 03:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661658652
