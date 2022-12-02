Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B565E7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D30C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669983054;
	bh=S/JF+Vz7H8+F6CP1tRXfj0Nm6T+JA6+5LZlhohDi5Q8=;
	h=To:Subject:From:Date:From;
	b=OFPWNy1bGmV0UOw8uvR9YXjpoiu09ne06KuHc3Wp8w3IfXxCTsFCmvsWc0TyWC99Z
	 qmnQsZixlknfPd50YE1q9Khp/S8If6rhZAkKD6SVbG8Ln6Cu2v6iq+/mvjO8uaPTBH
	 VIcaE1WNusF/ZrrZ9WS76OFTCbmSAxw6T8itN4jrN5UC1OfgbjTUoAUS0si4p56e6J
	 ZxwWv5WMWL3rUsV4VttQCz0334DIgIxsopZBbkr+8uoyt43aY8Yudic3jRyIl1TrQn
	 1dT5AGP2tvmO2/liy/ili3Ya8wu2b31nvke9KsajwCiAXz1jmnSPPJjJNoakmXgwii
	 Krx74BedE/LDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1A3C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998305437.17350.8601804692109515497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a2032ca40f572930279dccb3fd89dc9d5d573b36712ef6b863c05de5128a7f
Date: Fri, 02 Dec 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669983054
