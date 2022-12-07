Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCEF376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B5AC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670378454;
	bh=1OzxUMzdcFjL7+ZB5sc9dtomBuMjht9Oe74NHcHgnj8=;
	h=To:Subject:From:Date:From;
	b=eZLUBnE77JnfCIv43pbqsDX6hT7fR4dfLCjuB7caFgy5Tv4dIgZAZyhq/asKbgwFe
	 YJKMMsHptQPFp3UJp1JW3U0WQqhuHCFZ6XlMCtq8iZRWZH4mp06H6G6pDMsocmYuN6
	 QN+oxCCdoJwzu11aAT9HpBEWRPFKnQBxP2WkduCTJv318q8+YMcSd1pkajaDpMnaTo
	 JKcfUgPFqsCX9153bY8O3OS/us9n9AzMQwkVnCcuLDefQ4JV/pdwZraydxiZeQwbYw
	 GhMjkI1GTJBHAp6LPPab0XrB+bHfp5AQyfjLsbfHdEBwmdYrzsKcY3iwVisYnlheme
	 PRkekK3UvwOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F7DC3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037845432.9298.10946866942975887874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76b50aeffd073e13dd7761f1e8b547db8d28055969a00a5826e4951d8979935
Date: Wed, 07 Dec 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670378454
