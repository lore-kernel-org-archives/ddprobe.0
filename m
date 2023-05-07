Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBD55241
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72C3C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683502685;
	bh=uqUsOu7gmzHtpmI31FDieU/BLM7I/OxgA5gLkTgkOnU=;
	h=To:Subject:From:Date:From;
	b=cPeoDD8BFfKmeeMhWdVU3P1nsllOztHiTNB2BzApxDKy5yJhikc7fH/K1mqDx3E31
	 i6NOEn6VuogOC1i1u9eBLtD4IyJWGoJ2sGTFdI7Gr8glEeZLN1AGoA+QeFHo3lt6OU
	 2gUiuLWR6/5BZQJdx0YvRR+Z2hCdykZ/Iguo9T/QW3aWy1BRxW5UjNpMGBF3+F+cVs
	 cE6tg2ASweQZ89Ks6AtrQ/naoGfEd1sFac3K/9j6q9A7Wqh/s+h/dKqqobb9E1O2B0
	 Og9Jp3c0gaZKENjzMHeAP7+/cnm0F4wLrJ6eNwjLFXAZ065VU/E6ygbBUhuXys0uuU
	 h6PDuEf4dZqQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C82C77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168350268577.25631.2271684232443994116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec7fb9fba2a4f92af22cfcc53a27a150af6ffc48fe0211b1f9298d66b8aa610
Date: Sun, 07 May 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683502685
