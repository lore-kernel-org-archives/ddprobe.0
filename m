Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4E7EED8
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774747494; cv=none; b=uItyJK6EGhMHERv/6syZZN2HrInyCQqdtSOOQv1x7IjgQM/M1uLcI0+ZnJYUst6k2mqFCJm/j5eJ9Lepak3TdrttG6sfNUk0+B/kHj6Q/Shc7HodhbMEII/zhouNs+hq3+7v5nMxMsvcz55ar8NkfRJNzp0zedGzVThjrse+roc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774747494; c=relaxed/simple;
	bh=5XXpwiUTXXGZt8WFakLNKBBIcLfqyfIdnhFKugAGOyY=;
	h=To:Subject:From:Message-Id:Date; b=swU3PwDVQwQSdTLNCS/O5KsCUPJtGa4u9ip87ccaYg2imaQfcA+b9wVfovhjYJNGZH3WsfADZmPwXaNtis/ru73o3Nt3jbdNj5bVcNa9utVuQQF5rs2iM95kOSBjlFFN+A7VAbwym3FuwkoMvaKF4kqtbuYcpXpPql7xEPNHBjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsdZn/ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsdZn/ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7669C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774747493;
	bh=5XXpwiUTXXGZt8WFakLNKBBIcLfqyfIdnhFKugAGOyY=;
	h=To:Subject:From:Date:From;
	b=CsdZn/ld+DjnLUjCz2hdBGFTwx6D3jjV8PrhFSxjNyWN7Abdyt8H017AriFwy0Btg
	 sGZvFs/zY8tj6M0oBkDnKmo3XUhU4BWuM+M0U4a6dTJx5Mwy0i9hLy65n8xtvUlQtx
	 fY4WXNkEBICjJvPIa/kZ9GKdsNSKJzGnhELRzfN6lG9cQhT4qfT1vf/lIaECdk935A
	 E/g2URaY4hGKX0vtYPH6LwTEX5d13nR6VEc4f2pUa+CLU7W6bUk2fDyuwxTomFsp1X
	 Ik3CuSjHMRxIEmlQtl6pZBLvJ8FkyvUqgaBTOd8twcQvE6evM9tNsozSBBA6e5iGZ8
	 A7nv/IrKugvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE610D148A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474749358.17056.15384050239065176025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b318a34afe0e51b85281bbef76153ab3494c14954b309c2250636b079dc2486
Date: Sun, 29 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774747493
