Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BC97E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1C4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669214454;
	bh=FwYrAcdpMcbaeBL0RD9AobqJnNUz4A7SIKpdavX7OXI=;
	h=To:Subject:From:Date:From;
	b=b5L2StSTGDPakhcIn8yrWsvGi9PscZD8qb2rId9xFQOepvzKH+kfnl4L/ut5fUxR1
	 r6QuOuV8BnH/X9mQLG8kCz+J0arLRBExo81qK6wqa4q/CmIJT0sGlIsDkiFwxgOhwS
	 9Z+G2CGLCunfBw8h1iUrx3LkphHtxKdUOejq5IZupssgkgg11ADhHDFr+dp9NNfwH6
	 +bYD0MxZwsF7vVJouDFz/6qGmLb2vVnJOOZ6gEpcccgJrS2NRiAfeTtYQh+0oCyuva
	 jP1CBG3vss+Lm3IYoXivwhSkOyFVjIpcqv34rQZUtmSez7zlh3cfqJtq0R5FtwsTqR
	 dtOyr/lWS6Qhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54366C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921445433.20183.1607019736972054033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2f86dd9b6be9da376d4b3055ffe0fa65563c4a3163b422e5a0e9d90c448f77
Date: Wed, 23 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669214454
