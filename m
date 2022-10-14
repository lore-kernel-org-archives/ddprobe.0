Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2DF160
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747F3C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665706253;
	bh=V6XN/HUfP5YSqfC+wH1bp+ke5Nyry8hg6qVTaiUKLuU=;
	h=To:Subject:From:Date:From;
	b=hITPXsF68SzX7OFNSjssHAj0b/BRXfxZzrFcqY12Nhwnx8PohcssfP/iddi9GIKw5
	 27plYdIsxvtK6XEeePR7iMyQeeThGOrVEnvuGyRnT3wB9O/JAD53Y8R76LUmF/zIKj
	 93SLfrMO2MzS/DY+rRUDfpEZ+8+lvRnTWXk98JHg/BAb1Q5yfaPLkcBvACZNLKqJz8
	 2KyRsP9tEU+tB4loXYRJo5AynGClU5wX2h1ndw9dH6m+GLszvdXtP4h9Fq+nb+tUlf
	 SK3y0go0F3qFhuZi4pFcl9Fq+jdXk9O5bbO5laGeVLb6TXIV3CAuNSssXdWA/ZjRZU
	 rFOMqEy6JO1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544D6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570625333.29539.3409255168517683622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac030948fdcb001b6e3e21624f60ea539a96029b4423b454ccdef821ed21d783
Date: Fri, 14 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665706253
