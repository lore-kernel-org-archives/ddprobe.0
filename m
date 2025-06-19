Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6541FBE8B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750372794; cv=none; b=FAQqn2R2Xq6BTGD2EfEo4sMCJG4GSpp7yCLmx5oMWdHV4j7lbneejocJ1IswgrQAvHeVejyG+25pq17MDgxAGW+knTCPnqS+TzmFpbs26F7Scr+bPnviUIFEuGMtPF1W3xSWfjEIKmejHRKcBmcy1hxQsMdbgCYLeOey/LJW9B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750372794; c=relaxed/simple;
	bh=Hmb1wOTYuO2MZpnK0UqcLdVyE5djh6ZMJfyh9wBTFxc=;
	h=To:Subject:From:Message-Id:Date; b=UeSCNhmDx15Ix9sTW1jJi6/yAOpL5KMcXaTYqw8yWNgTYlyQ77+FyrH+PSyLdw2K/wzDlc24ue3GO9IcPyfuRvKU9tkrMMOWMmbLxcdHxuzCD5ibzh6sModLTEXkKi1wwkahGQubZ17rL1XaI8BI1C9buzUMxYO2EUKTTn0DQns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1QUbYHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1QUbYHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5219C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750372793;
	bh=Hmb1wOTYuO2MZpnK0UqcLdVyE5djh6ZMJfyh9wBTFxc=;
	h=To:Subject:From:Date:From;
	b=n1QUbYHZAgg+fSOertU2e+aCb3r25Ohw3IrXdGJcjxIYfzj2AfJ495JqroUXT/84q
	 3vKHXC8jmnrb26BydiEJEZBcwvidKvf1wc/0kaUrSC+86JGiuf6Q+aGWeW9PVU5aWM
	 CfTAqqVPUuK4wXEuI0Li3GXwBgnkddj6vy44aOBwZk9hHCHjXWg5bHnLtIRuJh7j0c
	 JHxemyd3q2dLTfHjzdtSF7lw+nvbubEu0WwRX9rRVY7hCdq9X4mrq3yt6x8OSo59wU
	 ycmzJAIKqNOmkArQlG/0d7+9gHRHgzXJlo6p37V529eMjvyKZZeYqSu4x9GUZCRbO1
	 yoSOvNhEWRGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037279357.26699.10379475461159049373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0c43b45d83e208d46c347c9a4b8845f10be1cdca874c41a8429a90d1481a76
Date: Thu, 19 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750372793
