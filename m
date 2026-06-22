Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C4535B63D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110794; cv=none; b=W0JzInzfYrsPvDVthaPNVVJ9hXhdPt3fHiGt0Kh2om0VjHKY7CG49bb21pXWJbznLfrH7HZJyj6mzPX6DmHLGvrZQaaCeQ0GRdN1wZygu+eZBj+L0BgiVnA4smm4Nwy60w9K1W00VIF/gt2v+Mkb3eGfjq9f6O79m0+PFMdRQr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110794; c=relaxed/simple;
	bh=jYcC/lh2QQ7ZTQ4jGCnbBoo/NnIHlfn6jcyVlVwubh8=;
	h=To:Subject:From:Message-Id:Date; b=qadE5g6UB7aX5LVGHv3bf38bOvqsvklMHXOItQp+uP6uJj149r7dP/ifWHlJ7OnfgO7zHJxyn5A/5FV/g6R79ZmoZqWf78Eue2IMWE7xkQpubVvFzKHRal6wc6NZk0JT9gT1lhwuCxwMvV3URimsMMjXv5SgMqCfvkf59GI5FGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9+0kS5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9+0kS5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB420C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782110793;
	bh=jYcC/lh2QQ7ZTQ4jGCnbBoo/NnIHlfn6jcyVlVwubh8=;
	h=To:Subject:From:Date:From;
	b=Y9+0kS5JcuL0kyAXwqBgOks7JIWP7EZ6rkuGUw+m8pRWLNTNkxoQAxHgdLGVViPSQ
	 Tb2LLKlerSo0Jnqz6wqEIu126gLyZoZ1dgvakpkgASpnsPGN0OkcQ+5rZjZp40O6ma
	 XofxphcaexUI+rctzMSLqxm29J6WB7/unz1GhW4HEc5DYcMQbnSAtTcd6V/M/r2zz9
	 nVnlY3Swu9BiGzKoiUHhCE6flEjTfub7neBSwv6DFBiuGDsTelKWJ4Hc++2joYdjfx
	 dFvQrAMxRDgf/3QHXSN6xGIIyV5JYi4cI+ek/FBc7gAW0TZMySe2SAeH3fBz80U31w
	 WiBDwZjH05VTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF98CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211079369.31145.4292386771960463175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e037b689a999c9acba85e0d16f626932679fc876517a3feb95dda1bad04a5a8
Date: Mon, 22 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782110793
