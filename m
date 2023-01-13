Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC07640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD6DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673587287;
	bh=9+JBUBc0trpsVjbLrPQ29JiL9voc+SvCcEwvf9vm/b4=;
	h=To:Subject:From:Date:From;
	b=sNJ5c8WKRo2ouREVteRVSJW4IswOxBWHdmiC6CbzPYKno/hQF7ZuIn7miv9NX1X3y
	 tWo2c2WouHDryivfGJY0LSIYv78KL9m3J7isvKuB9lrW7yikemXq9wdO/opY+Ae4Zz
	 TSlTD1kNjA8YTLR+/CgXRcz0R9bUY8Yv48VpY6M5QKadH9NUwweF8b4eAVJDLTshvY
	 76B0I/zAypVRT1C4u1iKebRU9bHvwnN6zXZugthVLwWYFC9juCKx1fpqyf/t6WobIX
	 CLyablBtrb70aDSVaMBu1XBVDIfCmrjmeJ2pn1rcCa47W6hYxHpscBeJNnXb02vlsK
	 9aURcIaeQXQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9CEC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358728742.12044.17950855576986717204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329aaa5d8238f3d298db39c8f877a2899d59c3b02ffc3a2bb4feecc87292fd9c
Date: Fri, 13 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673587287
