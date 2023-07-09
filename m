Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB45C96
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8EAC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688917628;
	bh=MNp0wU5piDkKo+f0TFWUaER3jmqT7Mc61OH/lprUOOc=;
	h=To:Subject:From:Date:From;
	b=qo3/B2uLyeSm6susrnzYtIH3qSIZuJlze+vpCpp2ZmEHFfvAzybKJoL4VQvcDLkf0
	 cHRgqgoRyebfNOPlVR9Ql9ELsluvdawJCWGRjpdD/cnHieIGl9Rt4tjTwgXZRFbnmd
	 DhtcFvpQAviaRRLfm0rnD5wpUB4S9BCVnlx101DqrRxeK+IjcnqTgypNJwseT89tvQ
	 XElqhj4mrAybILwaQDoHxwLQTDhu1tKVlvSeH4jct35KMBNOkFRoh3EbZIS58ot/CY
	 WFWvBw3wc7v4/BVe9yrI3TDN5gGOndqZ51HmEILoe7nti0FvaOkFaZCfPy7l88QLTO
	 ljbn81NwKvn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB2EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168891762869.13635.5847302925896165883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2000a02054797ef313b438cc1e3e28de9dd11f2d432ba2077df1f55ce63ee2b2
Date: Sun, 09 Jul 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688917628
