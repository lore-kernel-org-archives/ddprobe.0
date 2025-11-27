Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068CF2D7DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764262974; cv=none; b=osUjxoCDhEVo5mK7KoDvo6WgExMakDyRJ38sTRg2s2kpocOX4BgzpklMtsNV6OZPqz1/awA9zyw4njssHx1yrnS7St1iNz3Z2npcaCXoBvbj5N3REUSrdH6nAW1Dmpg2612ItgJ193WjDtlMqPhuG4Hl/Uc6EdYSiHV/e2q/1AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764262974; c=relaxed/simple;
	bh=N1RhqmXV9qpBnMDGfdVMvIljHy7qSA8WS5kaQXH1F2s=;
	h=To:Subject:From:Message-Id:Date; b=CYNE5bxN3YgG+r/HJor8CNZjPPBmwLwcY//n9rvX/6rRrb3KZKdTxTCwXqin38lDYCYB6M4vagoG5wzYlWSMUrw20ChcyIMPSBOWXsBnklOnPIIQJjCy47H4AE6g/gePg7dVLRz5Lu99GtW8TubnUn/zWuV3PZpmmM911ZZL+qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuXWxyhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuXWxyhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA4C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764262973;
	bh=N1RhqmXV9qpBnMDGfdVMvIljHy7qSA8WS5kaQXH1F2s=;
	h=To:Subject:From:Date:From;
	b=PuXWxyhXyH/3xpmKaGd+eud6zIl+n+pmnM4Kyd85PzNMTNKwwE7MFQ2kKVYfxTSXQ
	 DdbypwvWF7KOyivar6YZGWdKntLeKHM8athrfbA1xICJnRf6EsTk4BxGZXaEmmY8xF
	 MUqi9FRo+6XDlMz6d2g83o3Ik9csElCBZ2ytutKlv2yUHPulIbbtIZCRLNc1M7Sumq
	 AkKhcObw5jMufffIwklBsJ9TzAbP+Wu/7slFLgkvOJ4bgP5vE4gMAx6HLBMfIbU+e0
	 PHt/1zhzgzxqAXYOJSY9sCfjCUukzlOu3u+hIvS/7P4udwEyxDd8R5fDpmUbl7PVm6
	 rUoc5z9HGtjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236BCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426297358.8930.13269289783768000388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f11782eb84052d0ee762d7a983641eb40a994e6719d13a236ec44f91de0b75
Date: Thu, 27 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764262973
