Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E547C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694CFC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662603053;
	bh=dUSWfu1nSM4fALsfJWnjVa0PoJ1cdzB0WdmxwTMFmN4=;
	h=To:Subject:From:Date:From;
	b=cHl9Upw6wajaMGz3JjYhHwXXFARwRBW/zdPtMBva51MQSvP0lZiFmg989C6ehH4GQ
	 Jof6MQQHxeuJ1FM4FNswzxOX9bbK9q6DLgwJ18+Epf8iSBinr2nZ9O0chPdIcasSze
	 fCdGu/hjbX+79qywfhzFzeHwRGGTmgDVTH9ANSmSsM0ikQVUR01z39jVfKKvO32JdL
	 +iHbN90Ia4hr/Zuz0WA0KvtxAxwfu7FxTVy+eRKeD3ki3OhU2bvjTt2lE+9USGz/o5
	 VOQQlc8Csw9u3f0+vLjNsGcP9HhLSXIotTqE0vic3nsTxiPvez6Jm9EntwIhLwqsrY
	 j5hC3JTXw3PcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502BDECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260305332.18142.3912994854070107886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1962c9fdb12bfff39e6f8f0051a60ecf0256dc3ea04aa0c83001fc19fccaa5
Date: Thu, 08 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662603053
