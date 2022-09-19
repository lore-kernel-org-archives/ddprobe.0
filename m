Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD847E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B716C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663553453;
	bh=FZYWfJmxUj7DE21nf+XZouMbaOsBoeaR3K0S5jh9YKA=;
	h=To:Subject:From:Date:From;
	b=Aa7OmwhCvjGyfTRVMckWAqepFtCGvOfEvwYQ9EZs9Hktfd1XmxG80IQV8GOdgKaZc
	 v3sMYFqijnU+jT6xA25iIc5DjWNhW/q70JClVtjNmpXRzWPiTnzb7WdddCCPnbsj4n
	 NrW7vzAnxjz4plG7jhh0tdvo8Ym5DeyVckmtgbKyDyq4KHiY4LQZOjjtdgr6zkVy81
	 vy9l0x/Iqry6llp2nL8ppQls82pM9HpmB02UW6fxyl0hMTB66sScQWMxtdVdlGMfgj
	 hP2bLQLmzNESqzc41KRmcnG7GZpxF5heN//cczfCjZUG6hsj+Bw4ugdnkJaDgEkSB7
	 jkCBxoN/Bp+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5136DC32771
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355345332.16807.5092760829136530078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f1e10afc758ab29aa02ca12d91d0e7f11a2d36d10c0c8702b6ee46015ed055
Date: Mon, 19 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663553453
