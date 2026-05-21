Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D09229A9FE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779371434; cv=none; b=PMVfTj7Cu56PR+rHv+6Pm3CFPtjZpPAAUYDvxOrsUrZ9B+4UyyWMowbVLqZhY7RwI3d/CgRpj18W+MArcRjsHw0Ii3gxLeue5SXE21Gi4lU0tdUVmCT+SDlXX3doorOnjIb6lA2yc96P83Htkyr4S7uAW1SeavzN5vI440J0LMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779371434; c=relaxed/simple;
	bh=au/W2VZqHrXzbmp5AM3oaOJhJk1q2P7HKTHc4PB17Gg=;
	h=To:Subject:From:Message-Id:Date; b=hVvtgpGqhlMEOxL7RbpAuhWXNFqXYwub7PS8Yj33E59sAjoGMV778lliN6FuT95oXBCm0tJDm/Myh7BUau8+H6m/R8BVL/vu80IadUOaG4/pEApfX+nykUSHUZuo/slT5yGZJ8hzXC7B1jk9fouwu3Uhwt+RKvOqYB4gVrPhccs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otehx3yH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otehx3yH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9382C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779371433;
	bh=au/W2VZqHrXzbmp5AM3oaOJhJk1q2P7HKTHc4PB17Gg=;
	h=To:Subject:From:Date:From;
	b=Otehx3yHZbuMTqEe7Q9S8vzZjTcBPdOkg/yVcZ2EBagZU0XTFsRAwTZFdj4QbWEdS
	 rHwQgTJd6CmkV92t3ELg/1l6ZvGrhO9BhLCjWGwAApQ6uw3sKeBYj/mWwlnJqeFFea
	 GEP9eKGgwpykcPD4r2RltqZJJauQFT7+XP3RdXhC2S0DKFZ6ym+ZduYkq87saurLyU
	 CzTFYuKcS60b30+Fulp7GwtqKIwAfoSmxhDKVG9DYH/ASTseoyIoWLpIG8VlGdeIkM
	 /1+Ww2TqV7fPW7R+xDwWGKHUUK1X859uiRE+O2P/c/js4r3lLDLjSlnhj3cJ9V9kZB
	 1KuCafZ2FURoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56A4CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937143370.16076.3442225110430546942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016f85c563c14b807af8291d237c5bd56960354d14de7d23d8bc35076d787e07
Date: Thu, 21 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779371433
