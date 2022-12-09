Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80B57E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A50C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670629287;
	bh=8rhg5+/HYLSn4TtkBdUPSaBDPsPdoblL/wUY4Z5bgpc=;
	h=To:Subject:From:Date:From;
	b=iRDl77h9mSy7KjfX/jUhF3aCGkzWk8kEskOgXmD1lP8ddsyYl4b98zp2vYjpcy0ks
	 FbgwAUKb3dE/JgGQye9S0mPkJ1UeICOyllyofpCJ7rDuXsD63ocO+JR/jaQdtGHEFz
	 FllD5KGYV606+/m9eIuSUj0e6SkQuu99HHl9Ob+HR2ssG+HlT8YoVEPsfH2FDXcsZS
	 XvVseFHNn9ivHJpxGSUkq1KVZRuSA6bDpCtGwj30eSUpVd7JrV112LXt9VyAK0pqsr
	 xV95ggErAmU8h9/90yR5Fey+lrmrTbZ7pFRHTiCO51TQGaKLMPGmxwsKHYuECRvFJs
	 yCG2qpLrKsmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669C8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062928739.22284.6137008012561628811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf0028167f7f7b5205205ebbf7949ad1a0a2db73548860d9af0b4098f6f31ca
Date: Fri, 09 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670629287
