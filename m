Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071E1D289
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc7oNq0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC67C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697883496;
	bh=59icTMEzzUMn1lFltl87GABn2/CQ/unwB6zGTB1eX/k=;
	h=To:Subject:From:Date:From;
	b=Sc7oNq0/c3cC2fJ8nuMPZddG+4xrzYTlBXgirh0NQkTtdbv9IK6kxJKZ9VIjveBxj
	 EUcFve9IC4ZoME9a8kw+ecFRpFFewjDoic7KrFvmIhqSOlk2sKIYiuOooz4e/CTU0W
	 bbsVh7uZXH3I/9wmasI7TksDfFaRHF9VUoNFPz1tZI1UXMClLOzlob0leScx5qDmpR
	 J0A+MQa22pOaTI8Cqfa3wBNTR5stJ5bqYYvNuCf1Ts6DhQbNnTkk7w5rbxa3pjesR5
	 EZ0K65LHCb/DuAQkSKtbJ9xVA6aO8xEMY/EAP+6uI014ADmt5m77Ba2VNoKKcpnTUK
	 zVEt/1+nUCwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C351C0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788349643.13926.764762348027600716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8d920607ff0eeebd61caeec663f22e7756958688d9f12adb02bc687b7bd9de
Date: Sat, 21 Oct 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697883496
