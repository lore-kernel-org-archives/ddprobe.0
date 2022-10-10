Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8A95C84
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABD9C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665431453;
	bh=05dP0Ay2YtT6aRhsnKijhUd6H15CwgSZuB/9/fyKjQA=;
	h=To:Subject:From:Date:From;
	b=ryrCnBTqH4TybYi6f1Hiz951OY+0ejohBiHrrnVI/eUxJdISgzlk7I4HuQ+ddwapQ
	 jgmT+Rf3jRFiaXkxg2WZQ6SSI8zF6meVW08JC5XXSwwMsB9g7SMfXEzJiX25TmgI53
	 ljcOm4Q3sa4cE1rCFxhrFratYUANGtRNpzggDZEXujF0a+5UmaS2qGt6gmRSRvf+vp
	 cwQSbItdsE7OcLRkAp4YH6T8NSeTVolcdWiuGNZxgemdzYczcbQY6VIfynVpFmpENC
	 99ol+jFW67wFyJsTTRYjfLILyn4heYddpImFMXHPEpqhiK2ftcsP4TAo3zWLfWYyg8
	 U+lkPcJSoGd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D104C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543145337.26801.15949288648227343677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb4db08580467ab67914d0d256136239c7112d5d63135bcbf19627cac959888
Date: Mon, 10 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665431453
