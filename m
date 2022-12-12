Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82A21FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B27C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670821287;
	bh=7ElJoGDP66cjDdAaO2Cp/W9NQ6cLWoptyLuRLwL+b6w=;
	h=To:Subject:From:Date:From;
	b=s+fwSGcvPOLm/4k1pU/d3MhDyGR4BwTWWGALilDBRjIimzLOXvyGiHD9wPrwY9aex
	 j3c2Rguw5B6pbx42Z8x+VkA4B+RKFUEL/VyoP5Tagu+gYz1+FXQZ/CxI2J0e4v+jM/
	 DF4KbZWFQtYfMlHl0GfvVfRJPoZ9rpH7W8sMqMh/+77rkUf7n/w6CnGJArkk5bQ6kL
	 CgIteQ+25TjRnlqr0T2pyRorG7jbM6OzelhJffhGOt0rgINFxvYNlswtS01M0mT+EL
	 IsneqdMTzhCzYAlfG3mtg5FSeUFKfD4yj+uOuocoC6XQ77TxFZf1LXWU1XIUpEQ7Mh
	 Kx1R6na3lHaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68440C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082128741.23627.11415097963357781028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b63a0da186a05cdf9ad1c726b76fab3f10167a18c5c73b6aa7e2d398c69b9e
Date: Mon, 12 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670821287
