Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E71BA41
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE0CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666983054;
	bh=xnM8yoNHtfI7WbJ60YhsbFFCSOcG0ckPv5C0sWCd/Bs=;
	h=To:Subject:From:Date:From;
	b=NpP4JQXd9uSy+wipRz+FzFxULQZT17mWznNYYjzXTUrS6/wTJlU8RK3SrZC0WjtIC
	 Q8cbBfRfylYBXljM7TssKZycKeDt2XzQebgPhOTTsSyP0m46PDdtmJRchZ8VgwHIuX
	 GL66A1znrqAWzSMH1H+TYUaOoYKX2aqCtH/8V2QjxMK8ApHZhyypmk9bbnSW6kBOtV
	 6RWvdQDt+ZtL28zedlDvzSGQDMLIXRvyVVHeYIVaidNhL6U4mQSye6HOMvKvYoT7IN
	 65B69qL08z9JGVclG7j89bVuhi2pShRD630wUhxbQGDjQE89tvhoOdyEWi51fo8geq
	 +cEK1LXeGVUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E47ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698305440.3932.12737138206486771680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40fa74bba08472051b62f717f29601b7d577c3321a9bc506d4d9785f46229e9
Date: Fri, 28 Oct 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666983054
