Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6151849
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+deQLOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E139C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702799296;
	bh=PD7QPZON6KQqAQfSKZIYCgjxY2gU3OAD4JVXKHvL3ck=;
	h=To:Subject:From:Date:From;
	b=W+deQLOYqlIGhphXrWnhkgNRjePtGTC9PwQh3XV8dI+jmr2yb+CMnZfctMOrjFi3n
	 8q1i3HwkYjxeMhjWoeVm9AJVqp4i5XS4itSsWVmsbHMCLD01O+fhiAuYbN0FJqDMWJ
	 dqVvKHizVza8w+3/zHgq9XbXuvrFrbeEE8m6AP6Aocoh8tok6daYbgJPOAnxY732io
	 m3lqll5G1LZuMts7prKOKQ5LDiB0hQGRm0DEUHUv6li5uJSo0Zw2pYNZ4wzoHBKxoZ
	 cSNUDdq5W58UNd+YyqtQ2XXxG+qO1qSfW0Z5THFtzVzIGuV6HG+rwR2DG2ZSPYncIi
	 4F3xnZSL1Fhcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F67C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170279929637.8160.18193713974079891286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c339cbf0068423b5bc48cb35e2883d2bef5002a97551e87dbc09f459b64802b
Date: Sun, 17 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702799296
