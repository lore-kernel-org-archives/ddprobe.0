Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3602817E
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADC8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675643165;
	bh=98C0glPxwUoLKcmWVyX2zgPoiuv+jm/yStuOwg6PCWY=;
	h=To:Subject:From:Date:From;
	b=o3KkZ1jY/R23l9O/OvAQmw0meKitkiTB1zNXFXBA9eSlGQbVws8QzwB8F3N9wbtEU
	 UYrlI+/OsWWxTrjl4BwjIprWeWH6LgBkk0QOG46TDD1FHgDShy3dDSJQhlpgrffLHy
	 AuT7EGeDC7iM6nu0pO5rqztvPYH0c1Os5mKN9hQh46myOTeS8wEhLGTm1NF4VSBGfc
	 0R2yD1ssjWpzqS9yEHGV8EjUk0vvEvEAICPhpCYON5EgpaX8E8UsyeAoAU6bf3TjUe
	 h1uj6pQMSH/T5eKOgSHCkgd/N6KE+8KONHv4GGIBV+fYCK1mNgeoFgZIZrhsiCNdQd
	 AcEdMgrjaDSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60EEC636CD
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167564316573.19977.1941605888259263126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93cbb1f07188f022a1a1c03c9ce44ad1cffc31ac249023ac49101ffcd1426a3b
Date: Mon, 06 Feb 2023 00:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675643165
