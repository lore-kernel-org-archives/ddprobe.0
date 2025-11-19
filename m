Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73178334695
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763559714; cv=none; b=Jez9kW9NbT98uMSfRq5dDH/NWBrIzXHS6sgnMP6XaEzIzh7QG7jsuYXzAz26ZQs0RCl/ODpjzQT/c1NafK7SMx3UjT1T9b2gXWzTislSmcA5IGLbMlhUOwpyy/u0EkrmBP76uRHKAtfZ5qUjhN5vdBFQgIEhjqqoMpZbl7IcqxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763559714; c=relaxed/simple;
	bh=AqpZki57gCmtIIwuN+5J+wlpWaGgVygnIC3SWG+v9No=;
	h=To:Subject:From:Message-Id:Date; b=YpsP/M31DhEkUEGjJhC/mlNvU3MNMSVHkQ9G9LGyuGe/4mo0s8ZKe6GR4LU02DxfpySCgPnTELd5Tom9x8h1LyAJvL8mlmG1RrBmw18IAu0vxn7sNKbn3rvElSWqw6B4e0xp0jtoNBN0oLSaRfxy11vJCAhey/bWJPmOyDDUx3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzAonj0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzAonj0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC07FC2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763559713;
	bh=AqpZki57gCmtIIwuN+5J+wlpWaGgVygnIC3SWG+v9No=;
	h=To:Subject:From:Date:From;
	b=BzAonj0p2iLFs02S4dsdS9HD9jZk68+/sW4DJ1H7NtlXGtB0VyITc0+PCBlPbBi9v
	 R9/0aM64sqXqZQp6Rp5sZDZh/JmINYeKIrE9mvOBWcQx4mxZf5aRs2i4dKaseJUaky
	 depP2Saro3uhm6RcZne4t4GIFke84meV9CqzH3gkAH7OcesbYHVT/T0HJrBC2Bi329
	 6nVoLWBVHy/ibw+aC3s/JJG1xHzaahK06vEF2jsmkQl1e/wLxib4V7T7TvbBMQz6Pm
	 OvPCwo1r8ztWLfZvBXPRioKcKBTSUmXUBDZ7n+lVOwgdZOlj6R/oSAFfpt9uB+xw+U
	 D1HVcXBjmIfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074ECF2591
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355971358.7767.12657826849847764878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29bb83ce5bfd35c8acb935cf8c6c41b444c2df0f19d4c669a867a9bca4a8dd2
Date: Wed, 19 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763559713
