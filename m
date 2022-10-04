Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F442F36
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C11CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664886653;
	bh=8olIE5dIcAUuFEr6AeOBYUZErZjBYqBRRxLePtIzLAg=;
	h=To:Subject:From:Date:From;
	b=IGzrmnf6Vqox/w3SJRnhBhKoJBHfo3W1qXdSJssJbinp8b73JdSsNiqkwKegxcez+
	 TBE4hec5FhFArXcxpB0aAuMTEgzQHglOhzsUPS10DEvT6xQlJbz2Pvpdv/fNxuAxP5
	 iQ1Zjpona4QfEMWjHVigppNZJhA+Lm5Ud5uN2npQiNfz/prxNDpLRlIbbxZUGsR+IR
	 MuzM30ZVuKEw0oDI3tee+baPfZrP7w7dZvkbdfjhAygSn/txUuFk9c82WUbmL8a1tb
	 CwIL1GK94OMBxr4guq/hcUhOCnXu0uCy4kVhUlc34Ux78pYOIdbCHU3DqvJVHpuFgO
	 je34yp+yCUg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EEAC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488665333.24137.17046563159983693664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91364fe0f66d04ef1ffc3ee44c6c59d0d2e5161f0e6b111adaf97ca9adf398d
Date: Tue, 04 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664886653
