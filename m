Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDC0813
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F469C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669011654;
	bh=baoXcd/ipWdDY5l/zFMXfp75bmIEZhm6Khra9o83HOY=;
	h=To:Subject:From:Date:From;
	b=a6e8U6NBOrpFOmQueJGNidrslyEsKJy0Un7+RQB1n9m/r2I6f9bP7dvCDuYN+r7u7
	 cU/LnP58qYz6qIkWfxe4HxEhXitAEvS9ERd4bJlYsnbKS4EX6q8LhWsrllaijVYMWp
	 wAIB5fSbI25kEerf1wknIZ3V6lIjETvw42/w0rhlKmLQ6/zALguJOxJot6YWTgRYiZ
	 ginGf9fhDt3ce6VfsyIXZWQ+AGwmYUCDDNQcNg2ZEeOACZ/kSkyZuyZCKSOm5hOZ86
	 nDB4I+IWE8FmdBgyCanQ54M3XSpUdpXnOI2IK0lAICA9hcj6HLYlqoXi/z+D4+THZ0
	 yRCy32Us3ZbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D06C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901165432.14300.7029958489895165341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24950ecd16b0feb21e675c4b840e403de160f3abd899d18968dad8e07423174
Date: Mon, 21 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669011654
