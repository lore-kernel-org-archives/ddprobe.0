Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A97155C82
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748970594; cv=none; b=BlHi2bQRUree4L+1ZLn+Zb2qDzpaofkIL1sQlZpJV5PJKNjoqSPQiqV2VmsVxvAXPvQ0IQfqQvUm9w2BQsXENsW804t7+eOmcrVX8qXx/wSGl4MIYtx6ao/OhzVfhdKLguGP9aMjIQKKtMtk76Gt/OPMIKWx9tc5XG3qbHpNF0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748970594; c=relaxed/simple;
	bh=U7owGiKuBtaw9K3qJkO494CJ2qt7kzFwxrbrUpZKgcg=;
	h=To:Subject:From:Message-Id:Date; b=gh8XVVpfZ3FFW9Rs+nEK3a7qIaLmNtnGPhyrknp9f/1TLA9z+g/BAz0xIeetcv5+IbiZmUyiDsIPd3k+WPpjkfpn/+mDsm7SZOf5Gdm+uEDUCyHdcOrA0Dj0co48yPLZ48k6nG9w4XRCAXPkr+i55ToPbwe9YkCC6i5I7K4hNcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWtRUklE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWtRUklE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB596C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748970593;
	bh=U7owGiKuBtaw9K3qJkO494CJ2qt7kzFwxrbrUpZKgcg=;
	h=To:Subject:From:Date:From;
	b=XWtRUklEDWdwfbncYQ0Zam3PM3A3kYfYz+C8HHhzNudSL2OgZ5Lrk+C0IyrBw/vt7
	 jxCUo7ytf/P5juwx2pkjRchukQndOELUt99XgcWafLoQWO+UGJqBjqOWVey2ixzqTe
	 I5dDPXYxDdgcqah2JxYCA24nI9gqmrO7WQuqxpIIWqJUlfWZ61lpZV/mjMTS/JlVOQ
	 UFAJtwHsqfIQlZ37VbpqBsAQpjwRycZ15/lxnbb88S6yXTGYn4TXdC3L/VK+HzR80a
	 hWx2MybiOnX5aV7Bk0eE4I0N0MUELKPrXBrWH1tGA/QlBzgzYadUlaHtSKFRjGfELM
	 J55zh+kUfTuwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B289C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897059361.18311.10180665216385307886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcae1edbdfe3e6d47186d0b4bc71639466a2b2e7ba41a55134f64add294b629
Date: Tue, 03 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748970593
