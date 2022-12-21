Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0D41C26
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E482C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671595287;
	bh=71ElrIX0RbR9RLCmXc+mmyJ9OvL/vuY5KFfpQ8C9iC4=;
	h=To:Subject:From:Date:From;
	b=YyKRyaKiLQhkvTzkkRbACkrOLd4s/HXN0eahNfd5MpKAnzoZ4MU/ryHg7gkApB7hS
	 9N35XRszTW1tjGNELrzYm2h8KGGGjJC4GJwN5VMVggm64KtvGVVyg7ajxJCvTrYW7/
	 LRL6P5mXaU8IjWD1/phv44ffLylhw1d5yWT3EqdLcmZDtrycjx7hJ7IkgaCKIC72of
	 Fq1Magwtj8oLR71v1sb1qYzIUm6UQnfjzut3UskgSWEUBMXscxU11QuBUmBDUHz3RK
	 +MDasy6yOnFO+3xkdnvEORaUNAdh2KUd+oEfVuPybMvmj0lam1gJ8l4sFVcITWe9C9
	 E6rUM7/jwpE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFFBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159528738.18133.17684564769524201002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab318805e6af8df3e236952c6402b8525e651e624cb143605a95588bd3d2786
Date: Wed, 21 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671595287
