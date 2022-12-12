Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31C01C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77126C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670818287;
	bh=c/sOvQvRBQyY58FIkjy6/wfDtsx5kv9XsBpsCqWr004=;
	h=To:Subject:From:Date:From;
	b=Q/YovkUKkRhD45NcXmpB1QKTJ+ykkUts9nQAPwU7t/0BjNpPH2RcXpZ6fQ4hqekqB
	 rHwPKYRyOF+zwJ7Tg+Ne5stLN54waikw7mk+/fg8/wmCWpc9qZ4CZOWYQmEQVmbZfT
	 yreiU9UEdcO2RfO1NP8y7S6K9yaMfy0zmhTsaG0bpc0cKbnaS4WBMH5UNvLCCUhFiu
	 UzEmpPR1z7IaWkt1xKpNqDtq44/ziMixPtnX2Ak3zqTbNG1QmhKQagOydkNvPJ/0SQ
	 +xwFHjKRRsrZBDNk+GviB34rmw2VpHHmtz5NgapxHFKcurLxyuztBndleQL1rXi+Ao
	 H9UMmKClwqXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D35FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081828737.25561.10478090440786224951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3190df7cd9c851b02064f281d689bcdb114c374d6d9ed6d4002b625f9a5350b2
Date: Mon, 12 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670818287
