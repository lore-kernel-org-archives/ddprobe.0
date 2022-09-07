Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CBC20F8
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3A7C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662561653;
	bh=6l6x6964VKoWvq4vu3Ov85kbBz3bDmiPImIJbCRG+oQ=;
	h=To:Subject:From:Date:From;
	b=H8BoXb/nPZQYuceczN8IEx6I2cNwUZJSZvInvDz/IyZ5WvUaT2G3ELrRKoURje5lU
	 165B3Ita+9ti51JxA12MqgXNuNiTkUSgD7+kktV51znZ6hqLhVbEOCc8fbuOaGxr4u
	 h3zQQIPDj4sSGwBw8U2fazZhbmNbHitalHP+0hIkLJPyqplWcx6UrBKCToLdVKGSEk
	 ytOfzhHFyJDUcyuhlBTxMgs8MB01chFw0exU3Dtc+ViNy1qSj/r0vbhlctEShW8zYO
	 TrUplwWQ/rgTQ7V6B3ECXWdra6S1aGlHwiJo8IwvL6XtjOaAFYV2iGJAUeR9If8p+q
	 j/92aYvyBEtmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54348C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256165333.18457.4182815222502951332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92283d7d04e51258f343d6a36d56309d8b346bb341efd1a40bdf99bf7e7fc2bf
Date: Wed, 07 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662561653
