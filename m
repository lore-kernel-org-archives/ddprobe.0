Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02817C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739E2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663558853;
	bh=WAQWBHPLBohMPzHYj3fnPQZaXmX1IrcpxgUk3S1abko=;
	h=To:Subject:From:Date:From;
	b=ceEL8jAJi5eoUtgdYgKOWawRm7Stic+qDAIC/bVHh8jTzX4BxbR51RSXEIINg2EsM
	 GF5wWCDI7TZALetTBiJl3Suzj6SXHVOeb+29Za52O6Nw2+/jQ0bCLIQkPJXs7oJVli
	 pSl0OOY9hEVtN7mU3T4ZJc0qqe3J1mVgnopt9833LSSXwlCIGVKpPfPRxYO/UAoouY
	 EXGiAMuRlfeLOO3EVtwl6M/bA7zrgz9Vauk+PCuSCXAN2XvLxPK0PK+dWnp6RcJtNB
	 rrbI0e45LrkWcTw6QU9EhyMTsqQdKfzKPnHZZyIBr7RvPMYOlBa4BVDbgZ+3wWEul7
	 ycjJv2xQlIhsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556DBECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355885333.10440.2923269158236278724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0bb9c1dcda1648e88c3a76a326fbeffe47fca1d78f61db6465ad0c4ddc9eff
Date: Mon, 19 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663558853
