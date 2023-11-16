Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037217E
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7xJBWuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8617EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700101696;
	bh=WSmsv+FCi20gAbUU7hq+B2/1oTu/nKpkmMmQ4ycPyc8=;
	h=To:Subject:From:Date:From;
	b=o7xJBWuBLnC101wAQ/IrlTODYoDgiX/QnoHelJMKG6xqPGgPXD6TAGS67UJjHmiex
	 tXU+fOTihRmhKXK/jekLm+SmGBCIJXayCc/C9hIAFQIwbpqcCCYRp/SiLgob6JyIfh
	 /+efyKjNgACpHuvtrjcUyayTsR2dILsGbUA+cM63mF64PD3kMgNNZlxklzsD/se0yZ
	 00wCGeRYuzfaxBhZGZTIooqYcQZUb8xiR3bsYbtW3JY2iL9G89PBsXlIf13cbaNl8f
	 ETGHp3sLWlm49gZzXxPZKCcj10gJICMltyKibOqj9YHaxTHd6bpq+Fd+xSHuArhy3W
	 oMIkBKhrfyRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD50C2BB3F
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170010169643.27004.13093999882372396834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f7667be0a9e1c64899a7438fb41432d96c8344db1899677ec8b5838713dabd
Date: Thu, 16 Nov 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700101696
