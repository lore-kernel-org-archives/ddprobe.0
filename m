Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCC9BA57
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FC0C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673653887;
	bh=QMFG+tq7YDoim1y+tUPSs+217hTnjtOhg9pb6w+vTqI=;
	h=To:Subject:From:Date:From;
	b=b4fBpq7cVppe/DTQgpzgLreyjMOFZQHAfciTE+kV0uk22JI8pNfgYDwCfw9HWQ54r
	 b/CXS2E8/NoO3pB7iuEO5gc0RpQKjmtEGTv6DCZDj3Ki3mKHyN3LTRuWyMuAIPx7Hf
	 MHW9zD0uyfrWsjS3QJKzORjZdEGogl9/6bqVXqeC88tEa1HjQpmn2Ovq5Lsr7EY7ut
	 vb5r8LhbD4Dhcwg1bK6hgoKfaC6Tw1CxWxnz7g7MT70suKA5nyK5PZyKRdUYABc+aV
	 KiuHF990teCTFBCDgBzH4UigiltQpMBbdN62Mp1u4Jdl9GpfCsjPA8Er5kSUvSfZmE
	 YPCNQJURolW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6777DC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365388738.1358.10869166508287988575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f5536436e71905f5b051e1faa1da3a408700035d853dbdec602d81b6ce6a19
Date: Fri, 13 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673653887
