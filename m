Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE502B9CD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745068794; cv=none; b=JKg/RRM5Jx7YsXK6NyGU27tcZdX5uWEvNTJjj/yAQdOgyLEnwweGnjRHTvCA/3M56/0mgoAN3nos+RjLa25ctsZMMb1S1FAvcq7maHQrcWgw+HI0uSLOYrL2sXRY1GM0guXuvjwtulnKCmBoioLFzr7CUIzTINkITSwcjKBfPgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745068794; c=relaxed/simple;
	bh=LMqYJl4YwWuc9Y/DOoRiGmZIqmkntdXXRJrDbujz9X0=;
	h=To:Subject:From:Message-Id:Date; b=BltmZt5BpntvN+Cj4T52e4Gr5+8Sac3vzeKacFdoH1iE1J+9y8YiG0V46Yy7Sy40wvvWLOe3C9ZSe4O+55uYYKYjxS29ryKnar4j+VP5QjWjaLl1sDbjfmxe9aLIM/rs+coIciGQnJBBeb9FFDUuPdqgJOaG7wjb/VGsrCQoyfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLG+Y8pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLG+Y8pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745068793;
	bh=LMqYJl4YwWuc9Y/DOoRiGmZIqmkntdXXRJrDbujz9X0=;
	h=To:Subject:From:Date:From;
	b=kLG+Y8pHDUBlwC6/nrD3gzeaXu9Xc17yGCPK/lkmlPX+gMSJr2d9jxGBIub6CGU32
	 xOFnqVZ8kPPMp8tF0TjTT3S9nOvTQQbUOIOs6siZ+lOC0b6k4QMdPKZVq8ZZwhUWxe
	 MVvnPIgmLTDo4LQ1ENJh6Kj+Ki8XZzW7Lm5m2h7hWRNfqI0PGuv4JqymEBE+Jqf7B0
	 NHdZjDU8ebc/TCzF3A/sBqOtGhrcnePHUoHZWq6+L+jPS9wWNw65/VQ6jP1/SrCRhH
	 ZyOMNj5/a91YvomgX3B+F6VL04laE2DwowsRWTTdaW9pwjELMqo4oxCoFfNx3jdRai
	 VMBXiuE4RI5Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CD8C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506879362.12954.3126207771974724440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721508a3273f691efa9ad09b7aa4977029fd4f9ecdeedf6fcd08430215429996
Date: Sat, 19 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745068793
