Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74F91C02
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F68C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671457287;
	bh=6SHcxs5BbfGEi55NukjP9xTB4n/dT6P9+kxc+tV0imY=;
	h=To:Subject:From:Date:From;
	b=X5fW/zrz1vAwbdejAZ5C+XpX/EbJdEJ6gFLRaUjZ7jlW4nUko/nlyVEPstO74XGjy
	 T9QpZOk+/fa/G6Or+e+S8PLn2XCz9XND8+OYeWp2t5wSdX7op7FzGBO70Q/2R0XaCu
	 wmtbBLaKfNvqKmDVbxXht8cFrlkHIxEuyPlBz4yRSSRrsNDp4OioosFp3b8Dq5VhZN
	 PFzKvK6dOsdq+/QuDrzb+ywzNUQJFSpWSLSV41i5AsV4A09DO13GWdGcT1LyPEhN1h
	 MU32jSmqtGrYS0XZ/n8D57cekSBwWvRFvBqgclYhJjh5mgs5JsIdoKMovbPjbCj9Tw
	 TpjEW9E0q9nOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66528C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145728740.29874.11970547871603651449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcfdfc068a5da7d521e5c6ff5965443bac410cdc2ae8e07bbefbf30da6d1be4
Date: Mon, 19 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671457287
