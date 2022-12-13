Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA87C15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9FEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670896287;
	bh=Ijc2Kg++bXWFULED9SL36SZM89yx4nLAHHdaWMnITXY=;
	h=To:Subject:From:Date:From;
	b=PfHHiKCwbypgWO4Smh8SJoiSZi9XlzF9PlB/KBBWolWB3K7qWnSonTwzwYkNEV2AJ
	 3k99LzqfRxUx/Z9nSHRRN680w0S4mXSy0aMmWvVUnohdnNCVB3RWA0jlDevtCU0wcC
	 qrRBN+AjN68fYY+n55tkVjBGZiUIKSM7V2xJbPIHQKXX5AzxfRRvNs35ziEq7DiWOk
	 km/f5AFDZ+Yg6Zj6euhTPVIrgYt3aB5fblSgPL4zG9mRTJQdVAfgi8secMpmI458DY
	 PPRWJS/UCt6XHnXAtVyq/ogC8nXhEKSeX2EUWiaCvpyFDy0B2uxMm8vuncbd9sF4Xo
	 vw3YxGcfaCtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F22DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089628738.10971.13113262355441263761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b51d832300501fb8256182c4c3424d4902f0bc9952ab40c2780dbfb584923e
Date: Tue, 13 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670896287
