Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B054E4C61
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64756C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661974253;
	bh=+9W7LZoeL5OwY4bSM+bfu3jo12st9kZPSEY3Ce2+xdU=;
	h=To:Subject:From:Date:From;
	b=HwKT+ZG4kkpnXbB+J/Yxxy+HR6O9BrndK7aZrLYju/MTaCUWggDayt5SR4ipf1NBh
	 1ecNps/4rABrQPzbergGX8zf29aUcFVW82aArea070vvr/EpLpsOTuVyiJZST34Eg1
	 DJ0HEAqpU3qBdePgKSAUsdhFj03e1Y3PJ3a+lXMngsp9/fbCplSiXKi1EwWSxX+bnx
	 eRgITKlONp7WmQh6iZJ7rqXS3tt+vbMoZGbjPNui5dO6g/VH9fNAkxJfeYporCFKs6
	 JM3vGgnm+V9cr8WeumeWuuHKTfyHeAX+r+qxlS2npUIwDcvg9AsKJwHC5m0fnGKYac
	 rrZVwDpYZPjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2D9ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197425331.29908.18203541082587565536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ad0b56b945d8eb9839092669276e6190f4680e679a0e0453cedbf8135fa376
Date: Wed, 31 Aug 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661974253
