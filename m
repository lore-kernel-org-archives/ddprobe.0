Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6AF12B71
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 10:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB11C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 10:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694858708;
	bh=MqXcU5NhQQ5qjzRFA6f85a610wy0m3dRdZSNK7jxD1I=;
	h=To:Subject:From:Date:From;
	b=QmY209BnvB/52JVW8AImk0hmHksnvKAGnmL/nvq8eypQcPzYdvhSW6wb8l0T0tp+M
	 cU1g90W9hrJZrM25nqw65Y0mKIRhbyS7b1Zk3DMJ3PsfU00UJ4Lnul8HbmUBUsgI6T
	 ngCn99N03Li/EHsq/oSGByuse5YrRGfi94JKDzNuGipPvU4+Hm5K+rplDvPhQUw3Ao
	 FaQ+XLbzzFoyq6T9L4QG4P6Kgk5lAP+owm9MeLkN6BabXB/TKApy9eovxSLhMMJstr
	 c3NJtBmp58SxCC/uRbFRdxK3PBkLskWixd3tzWk8DGVVDx50EbJC+0NotyShyOD1Ww
	 DI8NnOAJu2mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8051CD37B7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 10:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169485870870.1996.3223829630136384935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96cd0812ece74390f64310e00cbe9a6067c72ca4732ee8918219e50aa77948e
Date: Sat, 16 Sep 2023 10:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694858708
