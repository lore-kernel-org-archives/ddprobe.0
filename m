Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676C35679
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D25C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742788;
	bh=Te0LRZo3Po0hkZY3lVbxC015ujbr0WMHW8WChOQ8bMQ=;
	h=To:Subject:From:Date:From;
	b=XR+wlryxLRf2/WgDagfyeODqHVlG1XJise9V8cIsEiSMq80nLvO2w9zlytXynR3PP
	 4z1ngPBQEFV6u/Hv7GU00goyxFhwr/7H2GiPmrflfXWGdK+4NgiQelZ4tUmZDsBdE3
	 4TKL1ddsPr+NCDOSE5WA+rw0dZJmfq9b4/RXMQE2l3fgnF1LHPF/c4/jlzUL0zclMG
	 KU52UtPVFVNjIia2V1aoJwYKsrgNGi9MqNUyVHaJ8doFPkkJPaV1aUx21ovgbPpZCr
	 0tKlT0V69vyU3tsKyMmvtenYTn18BRlwggkVQcip2uIpCCHJywm0OfqQqeyPKJfmR8
	 bJOBZ0QjcOgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57FFEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169174278867.10538.15127772330538198866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085e6d8ebeb2543c34ab239e1fe4c808582c9baf47aadbc3a5bee93fbc818405
Date: Fri, 11 Aug 2023 08:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691742788
