Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8FC9471
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt9t/dct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FCEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702439896;
	bh=EUx86EwvJuth+lrZB2zad9bi+ymuWrnoRszF9PTmDhc=;
	h=To:Subject:From:Date:From;
	b=Qt9t/dctS7BU/LHyBVwUCmGQHCEZ7GzOrvCO5RxRQbWzbPUA/0XCXBE3wSGzPPf3h
	 wSP8l9u80VZJpMc57tY7lHX0JTOCqJlDqY3IDMhdV+sJ9mRkCk3iVZWFZU3LhnpNVw
	 OiAGWCyd0VPDAyRy1uFdzOI9TluI+WCnsWg5XlQLQ/Mf+ewGROVn3biq+PKGtvZHVa
	 ewAOlzjG9P32ylOUw7869plX2zF2qnP9Pkq/xGH8Vmf5vB1lRvhLeuVw2RXChjLtJ8
	 M1HpOyYYDnTxFYYHwlVnX5E8j4PLw0x4wYrKRM6/IOdO+1rZfKL3ycYBr7M+HnDMcG
	 u+3+wS1xlV/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B009C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170243989636.10557.5014938953123468428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757aef432394a012976226391cb57ba241db7f5e7664acab19ab4d67868943ae
Date: Wed, 13 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702439896
