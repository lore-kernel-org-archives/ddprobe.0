Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F330B50A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779048034; cv=none; b=JmSnNZ5PaJCl3stMIfZeSQ94WSj91g0cZfRXo9HLsOFjD59B6+fOSfTxIQ9JKgTBYeqtcpWIUe7VP+SnblaHZWVwR/TOD509qPAWA5jhUshe/QrccxBjJboK/XgTkrjuHzplQXaynrbVBAIzJDvZkmYj5z7kkR+uD2VhJldE0AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779048034; c=relaxed/simple;
	bh=dcpMfkOLMiLq2VJ04skLScKBzoZAuP6/xMznsPlBblc=;
	h=To:Subject:From:Message-Id:Date; b=f6P3mxZEKEumQW4BoGjYU4jFEdFX67zDaSCdKOi9Ujn+hA1kTnYhsCdnryt+UGp+c0bjI/Hbont3pQ2Try/oNcwCcOfSHMTnxAQDeR+W8rJfcn/52zy8rlQ7Als8ct+H7hHMo9j4uzWNxUARQg/iNnqhsqK6cL3jggEYy3H8QMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1b3VRkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1b3VRkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DBAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779048033;
	bh=dcpMfkOLMiLq2VJ04skLScKBzoZAuP6/xMznsPlBblc=;
	h=To:Subject:From:Date:From;
	b=L1b3VRkvfz0ghondn2Ooq8CsUnTWyzJdUtWfP6QbYNCrp6I/jO46507wIOCBDX5mP
	 UdOR7LDuAFQK7Q4OgDvF7+XAAQqAYpEpKD7aorVJ410UaQi9eAqgG0t136CamDcFIN
	 lCBEsFeLLIa9oLzTdbWjaX5GGMVfW9n7KWkJuzyOtzwNcuicttslmYtKb3cGFNxkDS
	 T7/YU8aWEuqJj0g0BeqkBhXFUyY4FLABJDbrY9nJiafTsFV2KaySr5l8LAwlowxolG
	 z+u3oQERm9xK2W3JeEZFKcZgOiT2KfO+CaWeSe8dn1ml0/OVb151trWwLtj1O/nw7d
	 WjGaQQPv8v+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE44CCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904803369.9426.6222867804030943417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309df77afdc98e634fddc2e225441dcd3698f29eefad11cf1abd811ac7bcdbf8
Date: Sun, 17 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779048033
