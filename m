Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D17320C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AAFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663437053;
	bh=5/rcVBhujWfTj1IYLjhc1JBC01RJls6E0iuPkOBYvMc=;
	h=To:Subject:From:Date:From;
	b=rT5evhFzjw4JhX/pPxkBLV6GJMHccS0E8/Z7vt41+c2ZIUjjcm+mNRwATFn+iCskt
	 zdp3MrVGClPWNl9bxDaLzmNeDLyqFanA45Juwl0ukRnyGom+y7+H7Hm4523ANZ0DYl
	 se5GnDjomBu5ATuz9cs+zRYgRtyIzO6KCfp9+IArH7ZmBnRNgdXC7RF7t887p67vhe
	 oRoeHeJfbIE1NyCgb5fVhTl8Zgn6IHGUcrcWlTefOt4YHQsmrsNqbCuxkWpGye1QMG
	 a144PAGdZEOeDvfwMqwReHOxNqDu/GanWJ5pWGjkK/twBA3213QoO8isi1axC5UT4a
	 fGrvM9Zmgbmtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EE1ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343705334.4994.2870496416168144582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3731a12b6f51822c0c4698a25576f9a213cc1d747df83d927d48c07003b5451a
Date: Sat, 17 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663437053
