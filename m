Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2750B110A
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TojPHe90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E628C433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698107296;
	bh=5mmUrCO1EvWnalyvWTvCJhXBWFgNxpLKbkS9F13R1zw=;
	h=To:Subject:From:Date:From;
	b=TojPHe90uFD7+XNknMiL/nJ+DQoAX4FNgfzfL88cN1OnmFuchvr4g92+qJ8tfqx8N
	 hkOc7pRzZlbQfwlx5aGvNA6akZB9qDV78l9LwHDZPKqX3ASWxv2hy0i9BS/l4ajEc9
	 HgzIeEzwRs7hygeBZn9mOqmG59URJoXkiOqYmG+d0whCIpsSt/xIZLKdFEnzO1uJvy
	 ztxKzJs+fqUb29TJ1nefpZnjhYjaMBxdlkR6DB7jiXrqtdQrYTZCMDGTzkgL9mcPD5
	 JpQ75crwyYpL74Fnp+7FSMXOgoC4tR0ZyOAbgTfn8wP3b5Dhf1hSyzV+sDR/lV0Kmx
	 pbYq45HThUqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65512C25B67
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169810729640.30753.121273229529418168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908ff10f19076bf37f190366bd00b4fb63831a52c791b1783b81ed3951defd19
Date: Tue, 24 Oct 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698107296
