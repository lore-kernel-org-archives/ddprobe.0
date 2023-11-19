Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5035668
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUoarBJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88958C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700373496;
	bh=3b3hO8nq18186ZBne/p9XL9CJ4XkAgThqo+h8lUAlhs=;
	h=To:Subject:From:Date:From;
	b=TUoarBJsbU5hhb2BK7IDCx1UVuSsnmqM34dU1xEqWoDlmN0rpyLgPzFDq6fouKt7/
	 XbRkm9BAlDedTGQPb8pNblCuLWZlAodPO5FDbEA3QFWEagDMNZec4CU3OdwTUTZCTf
	 /CXUc6Yd7GMcKQMDJiGgEFTslDE2uSbKO4MzqwuwF6wEfvrbXC8LaQ4mYEG0my0D8a
	 cfUU9JXUwCx+CKmHB8Xl61Tff7q9n5sIT53WHtSrYxIwvyYiHXuMrvwEccF8M3a18y
	 4BctNULE4DNV+hnib+BH1Un1YIuY85AA7SleUDIdL1RJPjFwG/ETGTl35XRmuZR1Q/
	 omO1qN8RiSFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69153C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170037349640.976.14173643789480285176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cec8a89e08f99279938e8ebff2328840e371164a6b38ea666742d7ed206ad2
Date: Sun, 19 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700373496
