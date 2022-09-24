Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1137B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B84C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664057453;
	bh=ucXP7Raya5/wwTP2pkkm4JPFrBYFhMoZGe75WkEACvQ=;
	h=To:Subject:From:Date:From;
	b=Qps7hWxUBy0qEpd++Nplbgkx+oeYZrkO2QxPmS0VlsTvHGAOugFwMKJXWNqjfO0Qk
	 WWRr2D/9RLh13HAqWLJ4cilNySjT7tG+Bqn4++i3K/GEM7Yk3jki/myteLdZAlbmyg
	 E30AGzWp6GGD87rukU8ZZVHUqxF0+UBDaEXVSZLSeCaDv3hcdllEGLe4CxettZgpSc
	 +8aL+RfBnm4txM8N16d3r+VIMYUFQHGlMIblU8FKLOMhnn+hEqLRok2z3hM3z6abv1
	 oCDA3Ogc3b2jv20a28mFPPFXjeAFZNUr+HD6ht1CDnbxx4P0tq1lYQrGGiPVnPTQFY
	 LZqqrpEAbWfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513EAC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405745331.381.16741372667277675950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bba95b790fe252f859b69771516b9848f466341701e589584254e83941db75
Date: Sat, 24 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664057453
