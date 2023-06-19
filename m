Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7165E139C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:50:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D500AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687139408;
	bh=KT5sgsmzbneVr7ZdpqyvZ6JMa2/tfnpC2UITWAAWZjs=;
	h=To:Subject:From:Date:From;
	b=RzmG9bdu68f6QB/d7zKaCIHjzHBnBkjskMKwYK8/MVGZW/usFBTCSNCW8FqNGDtTC
	 4RshNO8KUQeseXu1TJNwd2E3L92Cov9Y2JAh1suL1tjEzwzIJRhPt8acF6K/+xmccv
	 5o2fQDbNqtSgtno0IFo5tqLy363hil7SzjASWYiYfIR0D/4qTMA6Gopyv82lQLkyjG
	 EyOWYNk0NA/pzz8C7BRNJxiGcZA12UDEja/3RETNiCfc/vxEO1ynFZ6UxWpAHrhHaT
	 TkmsKrOvA2+tpr5CZF83OtwqHWXYP3QRzvWw6RKCMAiyL3iEmgw3YmDnGM9tPjOdkK
	 m0drgzue6Wsmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B34EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168713940871.1501.13675837248465037141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aeeea7121cbf1a29de0b6dc2a38f2b51c570d9b4e12027196dd0f6c5ff60a43
Date: Mon, 19 Jun 2023 01:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687139408
