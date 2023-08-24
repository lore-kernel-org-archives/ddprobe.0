Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594002890D
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 13:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2560C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692885248;
	bh=HXwaGrWJ9z/o/piyxlF+8TDvkhu/7SQIX0Q/TdVC0eo=;
	h=To:Subject:From:Date:From;
	b=jBzkZ/gnUAkmhn3tyFgP/M6ay3irAwA8P/MjPk8Uo9Z1W2gNZBH4DfruSlPRyUXt/
	 6OsDRr8uBxHfaqXWyhvlT0iMWRCFziNk5jbLDrebQr63eFl7GfsUWsg3OWRtytBWYd
	 vZm5m11z0LBKRQ6c9KV+HA7aZcAAayOGzQHxm+JYqMKS19NR9kK1SNXLvlXZIGhAKh
	 h0LPc6pb1t6hr9/uRAga0vxeyJQmBC21FnWk+uq/eLwwU5s1GRsW7UMPt7GS2RuJ/z
	 wMwdsGsR0HmgmWjCbhqazn07L2UcP3LKA7QgSXGlFgWRu+jfDl72MFAKvr3NLNMhST
	 +/G3yqQo9MQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7383C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 13:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169288524867.15762.14807555939234047412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585b874b944d0a387b48f780715d986bd1d33a5c2ceff55286fa15c26020a543
Date: Thu, 24 Aug 2023 13:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692885248
