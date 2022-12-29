Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D495F256F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EF1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672318287;
	bh=/1E3YnUBNkMq7jRypsQ92he7a2FLFCHY18crq/jcj8A=;
	h=To:Subject:From:Date:From;
	b=Z32NsBXO0fdCXzxi6F39DvvQfTyVMhfBcApYl03sRd3QPB1cI4SAN/dn4dio5TXoQ
	 QpXyfi/H7/vFNQjUCUmtGKRePrdXQrWMeAbQEXNjP5xJO22q9AdgTVjnXzFGvEU+rg
	 L5PIrHXSSWAyZpptRlyumQNAAuL8CdASCVTrk3roxbFMVxB7gpVq+LyIE/bCQJOodh
	 kdejQie91eVLbze597rjsbVRokMwxQB4vw85gG6PEyfbPSnV47NaT8C+/zXDaCtqqo
	 Z/oe9BB+SD6pfAepdpbM/gPh+0E8kep0yTw8FAjJbSaWWA/aKV6JO3pC8Rb5EOJFF7
	 QjPuhxmhaPh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D4CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231828741.3376.12436429213518679789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20480903ed90a7c4f93dbf7cde79f153e6161da21f2726f13878e9c06b9e8ad5
Date: Thu, 29 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672318287
