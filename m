Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F772F3E
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD06FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677711965;
	bh=27y5FClt6L0Beac2sMYLpnU0T1K7sWxo6oOyjCn12b4=;
	h=To:Subject:From:Date:From;
	b=ixacxMVGolbkI9f5sAQxPQhi7TC4H3fCcBycz9eldyfO3nOHM2PXhRDre7xQipOrq
	 JcP7Sd8DJyAUP0awrqFFU5vIEjS6Zuuha4euZvp2Xw4E6Iej/YwxFgzgf9jh9fM4QF
	 efhPdefdIRJK4AUW6hqtXXARDv1lLG8dxo0iE7iSyXH3vbWtqmcKPfKyi14vraG/5A
	 68aeVz8fLXWD+dNshFQelJszsgkIELjc/Aygl1QgPI80CeQZdqcn7jbEKTqKjNndc+
	 dJtcZIXC6eZv0TOJktnHmqO5FVUgg8hg+20+9ZvysZRhM6e4iPIhHaPv06oIIFGZRK
	 1TuLY5QYy7lwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FCAC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167771196578.29453.15554258133807027512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a153657f7b264c9de09c3d7b8a67e676214a33e96460e212159e39d95180cfdc
Date: Wed, 01 Mar 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677711965
