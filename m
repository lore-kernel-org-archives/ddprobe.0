Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E2FED0
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIto1/x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9143EC433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698809296;
	bh=o5Aa77C5S15UQppmRzXsrBQzSbNLuN1TugIh3ZL8+80=;
	h=To:Subject:From:Date:From;
	b=fIto1/x7h2QUNeqznZIRm8OD4SntuRP6XbTvw6svbeZunml3P7Mxde1a9HvjS5aKF
	 4vcFddjwrxbEL0YAcYdgfZ7f3jN3/Zx8qBZhseexEgyn2wUZKvJPGc+VbMnfk4Ymeh
	 eQ0HqU6pdpnnhDOHoGEnQFLBTqehgSIUoh6s1RlAQYqMtXWZmiHleEQA+TNHHN4K7H
	 nL/kXY6FVI1AlV9T8GtahwTSJSX3yfTBm394N2/370PTqMt/pQZAFcmE4WF4qEJ2pR
	 9EIBquBPAlUaO+22UagksscRXujRDbnH6orKlZ5gBZoLGjAA5mAJxuULqZRVtAHfcH
	 xg25ywuVlSBGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710B6C4167D
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169880929644.16183.12565505365055595165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355fe3bc7369e1fb4bdb24531b88dbb184d59db44888dfdc9069ce09d1e43be8
Date: Wed, 01 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698809296
