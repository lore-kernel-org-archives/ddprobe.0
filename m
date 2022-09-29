Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB656A40
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEF0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664433053;
	bh=ytlR0G6LCRX0Fxfb5TfNqqQsXy1V8s/rTYD7PcD6CBs=;
	h=To:Subject:From:Date:From;
	b=ROKi4P1aKDgJMLDdutUBuHooonnLtcxBqQpv0GZb4PyArkHDsM3n3tQ6PeHPYTIjn
	 xqz6jcrVHu799ty/fw0oabQELib4tMIzwyOLpnXbpenkvuq8HcgJQp1i8dVdIWeYZU
	 19XZo2gPCNMROrRwL8XEW3CygcvC4EVXDhz42v8H8VXam1ucHbuTkpOzL7k0OgNM9O
	 dX4rl+AIwnUf8XND9JDqtk9ahkSzVlBCZf1Qxs5orTf137LeDu9o+TG05wdGUkPMIv
	 v6qNe4zeouRb1Y2fflDCYxWpaL4gcLa8LPvezfvp5jqfRObziIl47Pqdg+KNQtXD7D
	 72cn+iNlLHhog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544E5C04A95
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166443305333.23220.17884146677719702632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422f2c3bb695a70611d40952b7fd078d7c3b612fafdeec90e385d1745f5faec2
Date: Thu, 29 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664433053
