Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640F3FBEA
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721181923; cv=none; b=QBeqWZCEKNYnRiIx5UNlRY3oWYJx/zJthmn007tlJZ5V2vSc4gSpW6SaMsCmoVeoMCRHSmrjSK/tnY7V6c9VhLdXJNuuFPsE+QY/0r9x3vb9GuAoXtfJyBhza8MOnLPELCAU3ww/j/aoKo6ol67f5EAtdVmMaRasKDi2rUUq4DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721181923; c=relaxed/simple;
	bh=c6tEVHC5lTqGIUw2EoEk4BtQiZ716hZZw0m3XgPMTOk=;
	h=To:Subject:From:Message-Id:Date; b=q83SY0jGqX/+BUJKTCxg7NrCMjpiOXTqYAZQUN8UOxoCRWC+S7sPWRd0VuB+cgdHH7OF6yQWy3BPxvgo4zfEi/e/9G+mMo6LejnU+DlZft36gJEI/XCCclwesxo9mIi4xqVcIsUeFmLNeLX4S74JrKtYCjRcrvTd+jS9GXco9ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPv6cjAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPv6cjAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED328C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721181923;
	bh=c6tEVHC5lTqGIUw2EoEk4BtQiZ716hZZw0m3XgPMTOk=;
	h=To:Subject:From:Date:From;
	b=LPv6cjAu/sLbngVzbkbdpB39VQTGkRlGGz2Pw7TUHNo4V0o6gIS0zVlGZS69VuGqR
	 JQTYcK7633hQEtr4uLsoK47hclGXEF8yPcEEsg41BwJ88/cysK6W4c4OPlsCmF6sh0
	 CY3bffhWsR9qEe2Fwf3osmXHvnM6tF2RdueDBYVu1wAm6BBVZRsDvjSHu4QevQk88z
	 527gHW/HMYISOkGwFvUe8NDrQZFGfbRxNFAQ8Vm/AFXPybw2ojkR1Y8ph/zgisLKlh
	 ghai4ypkg6rhhnyCIizzLbRKkQcxc0YL6tMKoarMf94/AsOHiLQYY3wWHa4P2fIpzb
	 ksi5OA7L0icmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8933C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118192287.23069.98444318474934818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6304cf469c640cc2c50daf2e71179b36b8b54c50e2907e3849da60d73ce5574c
Date: Wed, 17 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721181922
