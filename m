Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4743138656D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781596594; cv=none; b=otAoDNoreCgxe6/2+ItRSJQas1GzM7kKyGM+LJfViAU6AWPkTQG6hNTMsfEkXd8/oAm8b3UwBPvGEWH5IbDPxj+uvvKMLaxyotu7d3ZzGJ9yqGa+7StF+Oudm8o77q5RDLkXYptuMVmsLrCHLHlWXAOuK+2UnXGgIhOk9MU0R3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781596594; c=relaxed/simple;
	bh=IUrxSoinYsCoWvf9pDmcYFVvcwPLhL8fx1oa0E8P/dY=;
	h=To:Subject:From:Message-Id:Date; b=dKoIapuFZKCD2/ZulZet8tpDJNhrrxxg1uYhS/nXW2qvgRHbUtRlVfpIsxQvjK0+/vcIUBGigqijZGBJK1vm1SkeC8iDZgntT9TwUGTzg0JKLfqziqn9q/yVcQKnEvUdJSU8WFDJ79N+6s7lM3i1XoYwK9pun3Rg6LbSPuaG9pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQlMFe4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQlMFe4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73FEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781596593;
	bh=IUrxSoinYsCoWvf9pDmcYFVvcwPLhL8fx1oa0E8P/dY=;
	h=To:Subject:From:Date:From;
	b=nQlMFe4o/6HQuRX3I4UVtV9mQSjB8CQAzXApNHOqrTnLhLukWgr2gchl578jq0m/K
	 pntjPWYf9Ss2X6C5R/nqjBXds88RTiFn2m9nP/hdyArRnBx8uoE31hxVH9p19VqYNN
	 TRhpKjTSlkHfnYLnwvWCDQ9cjjLwsu2H9tp6XaShgbeOij7WnR//wOMgRx8GWKQoL6
	 P2TjARXAtoXoE2p1b2wc4EgEuIGlks3oH3FOlwx6Ar475wUW//4Z//cByO0hc7WBjC
	 zeiqOpMV9xVjGt0uicbRbBzO8cT6dAszAV2kEkAQsOPH0kDLn1K+v1YJVlmBgF8Oen
	 HSt/wsfpz5zIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DADCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159659372.21413.7132078007671489626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fed9380c198a072adb17480dc07d01717806d9969e23cb2c69a719210f433b
Date: Tue, 16 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781596593
