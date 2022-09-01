Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DC07480
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E5EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662070853;
	bh=5c4Gf3JTRCf6Hny6/5NwVPw1ppr3LbQtyTNNJGFw8UQ=;
	h=To:Subject:From:Date:From;
	b=nrCv32M3ANCajLcRDCAWIi66KX831GwTCcDXeSpv20c4mm/QPQBDNJvlKALIEANkL
	 iTyttPLT0Ooa5u/RzFFFQL1tXYDHKHkLV9mOlS32AVeGqLXVI1tLUQUl2oA4t5gzt4
	 g5Ql0TRMjFikJosFxzninEEaNXMrGPsbd/xIR7ZmS8HY7greBkWsXym9HQkS4ARgsY
	 yPZe/Au3wsJDrRO0anCjm98Q8PRfl89jiX36aPPIqJOoMlmwrp1/J+JL/feIwTrdbM
	 +bcQjZIcibl9Vqpv9nGnRaPA4SXiGU7si0aHwX8VaNd1WaDpnahA+F4JrJHNpntw/+
	 qhRhQTl5IDyyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522D1C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207085332.20780.9012446735705148971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5177f7f09a9e5eeaa69e7060d284773664d143b43717cf0fe03fe76cd13330
Date: Thu, 01 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662070853
