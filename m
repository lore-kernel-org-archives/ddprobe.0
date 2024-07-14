Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFBCC15B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720996823; cv=none; b=C4+XbJTngO4ehncC6HcIPx5cqOEnnXLDjHYjSlCm2S1STWgW8GuXdwPc22LRtaPzaMNiHueeo+fUGCU68KacGKQaeVWKCw81Ra1Q47aAaAdCGWHBZ04MW2UJ/uAX8pxag2eXlcw+Nhb7M7+3jQzP/R6f/pSEk7Vjk2r3lNo6u2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720996823; c=relaxed/simple;
	bh=XED49ejMKwKBEQUyKoJoSJRd0+NaP60C8HFFcf5a/fk=;
	h=To:Subject:From:Message-Id:Date; b=eBveAtqt8M40FX8L3tqLHl+YwvwJ2L6BmOODG2k6qzTHE8Cqkkt0Nhq02AlftSHyzF8vlnDjOwyURwVrGzV48sUBp3JV+kcL0NMKNv/4gP5vLApfjQLjlvwcjmNPY4FidARAI5EDRFUz01XvruoUl8PuVSqhde5TZxcvNeO8YPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXWI7BR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXWI7BR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B81C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720996822;
	bh=XED49ejMKwKBEQUyKoJoSJRd0+NaP60C8HFFcf5a/fk=;
	h=To:Subject:From:Date:From;
	b=SXWI7BR+wQ/X8W1tHsGmDwHFvgq6DA9Ca/N5X/quHPiHnUoz95fwO9yY+JmPVjlHk
	 eoa184Zg/SQ4Wf4xgmbk0av8tCa4DXGB+U7d+z6PTjJ7AvIytzPLQpArg/jfsgpxEa
	 9bJdUVZkO/NUECeuytMgpJD7K6byMS0HTUD6uemD3P9x37SdnTypDfCow4WyvKmQB2
	 QiuttUfkWFNhzC1peno1MsRWWs1x3zWOQiTm9TnLXE+QelRXg0AXY1MJk1lTIduEzD
	 ODzxUZELGDn2h+fITBj0Wmk38uzWAVqDElIt6UC3kjNYgSZPXX0Y18Z5bGn2kTbKRi
	 DDO2KfM8rjnGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D4BC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099682276.9838.15390113330385103001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b84c70b853c3fb82d6a426cec89251a8891faa0d30a3a0dcfc6bf4895e0a05e
Date: Sun, 14 Jul 2024 22:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720996822
