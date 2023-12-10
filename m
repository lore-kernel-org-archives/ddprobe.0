Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083416FAD
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNQikzrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CEBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702204096;
	bh=FW87p8YB01cL6KdO6c4ruD95/L3M5k9naN1FTFJ3VfQ=;
	h=To:Subject:From:Date:From;
	b=aNQikzrFv7ZxhjiUUNvUS1dXL3BkM4N0bhVkMFSXoLB3QBu5lOvdrwx7u6s/dNo0l
	 X7INn8fLQbpXcqBAbFNXbJ2qYYtEHuj7F1qVWRceqNWqtQ/psJm/0g6fNC9bmSB22B
	 e3A4uJOoBUbQi/ku0cOgvFWL0TZO3ngKMf2YaBc1cYTAeoFyQj/1eZzEAkJhePHLgm
	 JFzETpLdRuK/u5bEfNP7yAvH8WqH5bqp/5RcSNq74vm4gupnxcGKv5W3yudPIzPzhP
	 T51nmjPejykL+tpP/IEqCOhByVQHiEmp1dr3z9Ozmen4Zqet5tUjLElxdbojqTtBqp
	 uS2WdxODXJEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2ADC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170220409639.28680.772750862055981637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55694cad51ca14ef0ec55649447ab87a8468657e9ba4d3bb6727c3f9628adf91
Date: Sun, 10 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702204096
