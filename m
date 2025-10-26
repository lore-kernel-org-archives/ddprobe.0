Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364724728E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761500394; cv=none; b=p6ee7wJkHE7AUQ2WbhiVPLUJcqO8Gv0IkthNsROwYE3H5z24MaU9BrURUyY/PUQp9x1zR0cJvdMEIKqB6ehsRYz8oGOyMuNzWLSp3ZHzOjCdQUEnnuzydWXQpDRhzs+mRWb7HUIKIt/EKO5h6ENRXe1S6Zo5orwY55NVP0cOi7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761500394; c=relaxed/simple;
	bh=Shd02LnZSh9qdQp1GW8khKgtyCJiW9Kd6YBEnMTdG7Q=;
	h=To:Subject:From:Message-Id:Date; b=mN5emyMTxmWO7P7tbtQaQo17SM0CaYDVMBYpQFWqJl1+WFGYRKRQXerWkMFyj8grH/gynjzNNodEfDY4W80FV8HjT71Kd8bxyUD25bY/k+7kwHIFqX3kaiEiZSzjzSm2R2HrBUtlY5cEMuQI+k6DWGKGeL1w3bWsrOj/xbcTtq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r91HJsUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r91HJsUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC21C116C6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761500393;
	bh=Shd02LnZSh9qdQp1GW8khKgtyCJiW9Kd6YBEnMTdG7Q=;
	h=To:Subject:From:Date:From;
	b=r91HJsUcuJCm4oMrXc2tTLF3at1la9JT+20Z+lxV3fYYJ8kh6FVTjcXjJRFiMkiFY
	 LUPE4HjAwtA4o9Jlx7DK5Bqzb7rqA0PM008yqGQhmFdj2Iu5azBoEr15dX/J2U7kNc
	 6WmkSSmxus93TTf+jrZQy4IFIelrU6XM0I5wgo+sxUhIKD731ig77+6zj97w4aC10y
	 +B3P+mnTweRHrvgejFhVezX+30hHHA3l3dBNJ+OfdVKr9I9vOuzuyyXT4hWPyR5seu
	 37gBlh1IdcZMK3CqGh4Oi39m5yFH9M80bVJMAKs0KcGIY7B42oizQ5m3VfeQb7vAE1
	 kEgKbjPGgkzSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63BCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150039358.13030.11320982149438480850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd9e63b510326d89b4927a15663e3662f9b62788b20df4112145d3f125152ef
Date: Sun, 26 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761500393
