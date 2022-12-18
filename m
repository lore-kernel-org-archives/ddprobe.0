Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62817E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C56C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671352287;
	bh=tQBFSXlbAkZUl5j9HRXE/TFdNfAn0bk876dEQbtRok0=;
	h=To:Subject:From:Date:From;
	b=VoxME2SpVYZBDyiw01dzJ4UtgajqRwH6/VJ5y9l0lXdZwDSlzRuV15A1kAoShoytw
	 ad7Vow4CgT4/b8h/yKHPmDP7I0Si3h+B3nP1VPVQi9HZ8yWupwaUER39mgMEW+uAW4
	 RFGOGPiTU+7xcGYWjyhtSYVbHDV3FNmKJ22mdXLFR044DUMit9hjV4264cwt0FgPuf
	 sOqmv8ZV5oQNEpeiNdzXIeLaAF33iXGnOf5Kep82t3HKWTs4IZmdQ4gndcCwCYOwC/
	 mfSuWSwnUMWgZMuqMStYoqJ22HIhOkFK9F+Vvtg96Ysxn435lYvgSFoYL7aVHdqmfQ
	 td8LlkOwPf1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EB8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135228738.13514.2177566059815134397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643b7f8f327573fbabfff9e3b5b1d46c1410fd95aa25b81e8a047eca698835f6
Date: Sun, 18 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671352287
