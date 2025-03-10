Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468B218FDAB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741586334; cv=none; b=pq8vbkIjh+4GBMBzOI5c/4siwgTC0lHjGwwiALxbcQjmu8XBk+YFBXsark3TSZT/myUV0pRlWpg9lqmMBnwzOTUwzc12Anyhgvhaj3e+8UZ5awdUoQM5I276ym+9rHwnkuyv5nYQ4Qf4VUFGq8IKReZOmGLY8J79mGYpdQkv4Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741586334; c=relaxed/simple;
	bh=AopvfEL7W0l8s1Dx0elGk3M7UBB2yxUS82VdQI2jIeM=;
	h=To:Subject:From:Message-Id:Date; b=qg9mbsn5rU3Imyqp5UA5nqsCFMxmqw+aFZCzqf3aIIieh9qd5yc3Os1YXQAAsHFPSINA75YfL8wvvvYeN+mWFOfhrrJZ5I21O9941CXtpps4wL79DhidzgZrJQKCPv23vBJ0YL39BxHbNNCfBdjkLHKnKfl5v8oShBE5TqWthB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwgxeEgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwgxeEgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEA4C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741586333;
	bh=AopvfEL7W0l8s1Dx0elGk3M7UBB2yxUS82VdQI2jIeM=;
	h=To:Subject:From:Date:From;
	b=YwgxeEgOHU4nu2lvX9sbqBj7gQEIJzhsf9LEXZKz9ls6LWncRSFCHbpWysKzK6SJ1
	 9q6aft/I5fhmY7qwV7HyGOIqLJtf5dGOxG6hLNpOf8oeLJDwcHXEzEEvyVsBzj++X0
	 EQzc3JZUds20ks0dw361G2txhp2V9UDcxvIT9vbQzTTsj/rVGu6SISA2dZPsP7j+2j
	 yma3DwCjaf2EsrYTUUod91nGa7ZsZM2F5KJE4geQeez/WK9KkBXiKox6KimXJov4qN
	 iYhTfLlfM29pqH6Z7jH48PG1fZfskFGQGX8/EVVf7lRH7CGIb4Q5/ftC21EzFt2ANa
	 UQMhWBTZ0TLPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99774C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174158633359.3887.6292233160024752461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cc80ec7da8217b797cfd62e4986a34f9251dcbc25f95e3e7f5bb311e302d99
Date: Mon, 10 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741586333
