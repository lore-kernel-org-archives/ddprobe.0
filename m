Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE69809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CECEC433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666612853;
	bh=Ue7/82B+mAu/b/sUgkwE3Gc9W0jYWWpn19Fp598NGl8=;
	h=To:Subject:From:Date:From;
	b=bNYHoK/tvUuJgKZPb13Ls417nhS6576l/Apb0KEpg2LOKkfX3UnnGwwn6QeNdIi8J
	 diDjWyJxWTnogTgfblFSGuoNl6IDyGf3/q60e6M2Jvn18u9r6tr5F0TFi8Re0lcDhh
	 FHEXN+aNSYW+UnrwGrBpY6jK1HjvgIpxzvJUIdwieftKFvvcBFWKmeOjxeeZAkyuEE
	 KCe9/E++q3+cMVZt8PXLxdKu4OL+RwCvyxyQl5wtYUFytHoy4HwubAVSIguSkFmIS1
	 aNPgVOA6wK243kZmezi4EKetWuM1ivehCq+S9nFOgMh2RxM79k6UnfK66FxyzZ+V34
	 V1OK9MCq7VqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E7CFA373E
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661285333.15418.16841339071642071728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b4743a480d9bcba7b0d5a50e6dfa5f5caa6cfbe31574a3fd9f18346696d744
Date: Mon, 24 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666612853
