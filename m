Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89ECF7C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D24C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686112925;
	bh=bk+bOaT23xFwY9tMVwS1x3vRo91vkBlxguajoVcu6vo=;
	h=To:Subject:From:Date:From;
	b=JOXuDPZ/leunwrb+X5ndKpZ+f20+VtzT7mepNd1EIgfWlzlfmnSs/Pi76AmnAWM9N
	 srMz8J3MvyqefLPi8Y7DpuIB8hAskoXkDrfepfgCnU8xcxEFnKu1JxWgjk1vUQsITu
	 +pXdPrRXwLRNPQGd8CC/Fknw0E/Ar54h7kcdDNLF8BvIEO10EEHWRqO1a9nkl2NJlw
	 wUU2rymBnotCNp7z58chUUcmbC6vc+o5cI0hwhfp3e3lnDr8YOGnIfjblno9LzTvDx
	 gyt+TlTYCAHE+ZjxUz8mJOOYd30utC9Ril0zJKnzc07NyedHYsl2J5KX5x5IxJCLOJ
	 CmLRp6v0qmbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0F7C7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168611292577.31320.18215122254360431915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca54e14267100eac54f72bcc244407e07ae6e3ecc0448be1c5504988530aef62
Date: Wed, 07 Jun 2023 04:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686112925
