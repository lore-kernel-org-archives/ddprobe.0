Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC218AE0
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9178C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694527448;
	bh=hQpYqM3AUVw7O8WvD/g+Vbz3K7ExS7Rowb7ZCaptF7o=;
	h=To:Subject:From:Date:From;
	b=f+PjeQsOYw2BVtYZe9q1CIwRfr9mD3o2sxo33bQHsx6XwVZPzVaMobXqVSQPuEvja
	 JmHxxsg4pQv7oddznueO5feZt0hEVJqTy0sJ658MiUx+lilrWw6ajLjrYN8C7K/xfX
	 xTHL436giCRBhqfi++jHSwdir7KNxJIHXzwS4iEbfsiOQEo0X+Y/ZiZDSMmTtV/sxr
	 zNexzMaQAh4RgTfJW2nglH+POPlO84vzE2FPniGcU8yf7q6Ew61GBLLImFzGwiQ3le
	 CYCj1yO0Bp0ayVM4CdZHbSHZVLbfIUar10wVdxLbLWz2p0X0MKuaviMduD/DUKGClr
	 719qBpEpuBxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70C2CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169452744867.18154.18426704062425706241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb124187258d5e957f55265cc54a04eefcb11e5f725c34d89abd7e6cb691a155
Date: Tue, 12 Sep 2023 14:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694527448
