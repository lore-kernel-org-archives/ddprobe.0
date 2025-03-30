Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DCF1C3C08
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743348594; cv=none; b=I/iLUAsibC2wNyVsSopehf6+FzyTz1UVECLygUIA1jrUbP2CDam0sGCfWjxJzvZ4iHOLmgavUJH4D5d+k2+STcj528tkGQG2hMClXYrO75Osmx9itwVLT7HUwGZhkdEoG1fN9q/V7HyqT6rjb3P9U0jGhq+zcDWsXXlFidcGSI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743348594; c=relaxed/simple;
	bh=jAEnRSWbQySt+KAGsLHFhocq84GIjuzD9O6s6We8d7E=;
	h=To:Subject:From:Message-Id:Date; b=AxLa3RJ8P/tVBSjWYcXi5svl1h8h0xDpWM5rCVIZ6n2wGSVKc2rRk27RdTjpN1t/wErYYFfwgD2/mFKOW9x/PG9Np4X/KTfP9yEBKZ5Ri/wyK5QRbP7P9IlVP1JTAxgsm8cHV43TW2PmeCrpZzAILVkSHAfBVI3SrDcG3y9X04Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCO8+l9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCO8+l9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29A1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743348593;
	bh=jAEnRSWbQySt+KAGsLHFhocq84GIjuzD9O6s6We8d7E=;
	h=To:Subject:From:Date:From;
	b=iCO8+l9WH4KyXH5KC9FRLoSJeZpKfhQY5e+Xmhy8i9tv2JKg9zB0oE5KqYHtJ/xKO
	 VwmxfziTId+CZmBlkBDh2bFlVgI4GfVO9HVSxVqg5sa330kErVAF6r/PZmmBUqJmJW
	 O96YPhe0q485+tX1M9w74JU1xU47UuUkGOSdDWfKYR54hH3Oqf66qZpfzjsG+ucYni
	 6h1i+0xB1tFI4GLrZsDJUSmnasinfC60iU73xvjqCc4C8oTpOnZPCfVZLfkmks4buJ
	 WeQ+JNe7/DKikUxIhWW2VICXhqf1tK1jKClQIdZeYxymHAve7dufE3JydTU/AmtV6K
	 BbAvI/0gnVyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1F5C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334859361.4973.3096944937158978901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba606c953516b2eba0283d158256d849c502c596b2376ee663bc03854b13f7ae
Date: Sun, 30 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743348593
