Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC541079F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C58DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669074054;
	bh=VZgwbMXrpCwisRP14I6z1L6UogJsyOAFiQgAPhdcoGM=;
	h=To:Subject:From:Date:From;
	b=Yp4GT9l6gVBXBNK2XTfLZCjb0b0xyTchyjsYiOdtwAyNgbH38tsopdIteTWF5wZli
	 7cp5G+K/HiHj7GGriXojcZe0A0NhuLxSsoRttl3mCJYSPt5brT9w3SmMiy5/79jjEv
	 PLEEO8QHvXJCqaUMecOSyF2DHT271NqvaMxlZGkyj7n+zDmwgEDvbXgCd0BFHj/9P6
	 7vSGhCLiThsLvBpk2ZzbUGHif3+PAtiApj9FxiXQcSp02J+KIASy4pFZlOvo80Z213
	 UJhDEGUw/QSj5YbrLE8OWJ3CTUATU2HxIoFAkFC/d87qxMOt2/ruOaCDpEmTXxHIL6
	 xrMCKltCP7ajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56420C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907405434.12230.2825295517702544132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f899a63767a7c7d9261591a7387a78a9f9ff61d1603b0bfb1376a4af40a49ed
Date: Mon, 21 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669074054
