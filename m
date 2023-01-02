Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1770917F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D40C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672698087;
	bh=SXYyHmW1V1GOxGpClAIt+HP+adxNbHS/2QjJJwpWveo=;
	h=To:Subject:From:Date:From;
	b=DaR9ZrywG1trO3bdnwKdGjtmXI0cdtQyIUA2nk6VBRXspoeQoJuGh6OkWXTMukOIV
	 ow0pK/84ANyiJjj7+1ZBJwgIE4rpzFDEhZEjx02GQ1LfPHO+dc4bfv/tJHVy95IMZc
	 EteSrkqGGGHxK4F1ifVJ52zQMBQyTZwAo6mVCMtlTTSpZiJ9sHg//O5g5FVTztXhzm
	 Uv4ZSXgJXTMhmYOaFxfWldKHhMN4JtzV9kkbG6sOsInKAt8/k8w8YE1A9NY8NHDQ+n
	 kqQINgikXR8OySf70NV2HGtTdSrOJRJndYqGoBXRqVudWDuU1tGuTZE4YBKT0bvgEv
	 +r6Hr9qUCxwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93478C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269808759.16946.17036100386194418468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f792c0d32c7007ce7aba3fc66cadbb1a0b19f1d040a4a5c0f86533e76e935c1b
Date: Mon, 02 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672698087
