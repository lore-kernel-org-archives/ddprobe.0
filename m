Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1083C9EE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776437854; cv=none; b=ctmjtnkhNZDGuXictQ7O6yhx1BL+APX/9zv0YKBWLD9GF9eRZwvMRIcSuxJiXkFr5CMYXM7yboA3i4SdrkfNgUkvkFKqKfuRuriiC4+vxss30SuVKLUhGBvyq9b6sonokmM9o4E5500rGOGZzXTSr93ka/NZxa9n2f056q5JPUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776437854; c=relaxed/simple;
	bh=LYJnRZgS7kpKcvPReyur+6XIA2CpdLQUM1qSGpp05Hc=;
	h=To:Subject:From:Message-Id:Date; b=CPT4i/Jp2edl/7OiD3TRjz4i2xXrI2FYJy/ZWYG+rWKnzlmt2q65v+7k1zGZ9AxHZRg56Ar8tsf9c9Yx19mGHOqGFSr58IZ+WzLHo60NfK9p9wl+oVzWh0ruHuGUkkSnHiNgEkzsms2D73rq8vu0pTRgT5BcH0sUIGmWpRFgZMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTSgAL1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTSgAL1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB8AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776437853;
	bh=LYJnRZgS7kpKcvPReyur+6XIA2CpdLQUM1qSGpp05Hc=;
	h=To:Subject:From:Date:From;
	b=LTSgAL1Jy250tnA0c4PJiuPmR9NCyNFoYv2LaIxn15dExWBOAfkab5fL4WJwksFse
	 F0gFSJSJB5talDMtV+q5qw6a9TBq2Bzsb4sh3oh1gFGJWO8/mcWT1dz7tYpRgk6C3N
	 3cTdC5JURUJoSYYY9hoF5/1qphe8nanUXGWzKphlceEKnfHY7lXcLjQ4K8NnrQkJ65
	 //afFM+x4d4klQ/Xoo41HQ2mTKcqJyrf1WDvXhd8yo0thXJsER3UNyyKdBDma5Z9eq
	 joT45ZvNzH8XfhJGmDRLIj2KcNaioTYxaQCcOWRThm6tebl8Etqhuv2VpEp2wl8Je0
	 +rCS8CaOQSwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB06F436B5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643785368.31281.11735646586908138987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700141a14a4a72a8a29241642152a51286d809d3a869ff85d8cdafddfcf935fe
Date: Fri, 17 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776437853
