Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78C37B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B984C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666238453;
	bh=99ayQo65Ds02rWzt+BxxF4V+xSdGZYrSaOgn1b+UeHc=;
	h=To:Subject:From:Date:From;
	b=dTFYf6O6hRRa2HCOPNMthjNVqHDQ2OTvbDGuJjr8ZUUobGXbyQayzzk5jmbfW4O+N
	 DLZyTT1S/mF20usyp3p3TogZ2JyrN2GU3R9ywGdoWrZL1fQMZXyLZBxcv6QWvrQcLF
	 Wf64g0dJUM2fmNprTl4wKKSy33gqk8dYIwG2edG0/AxzYKz3fTyKk7bBVhknKYVEjd
	 6KoeUGKLfpSsBY6TOc9ug2k3rxRAEW6Ph20qevDovDeuV9YYayrow7fDgsn2DCST93
	 UCEJJuiT7F1HPj2hFW/Beau8wRQkQRWzBkZJP5qpLhrgBsesqTTGaq/S2qWFWixVpQ
	 3QwWSW5mNx3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FADEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623845331.10700.12305235137184096779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c52d95376e178ff901f942722ff83cd3afacb8d8e49f6d271c32b561d6f688
Date: Thu, 20 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666238453
