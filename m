Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B1D1840
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0281C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692168188;
	bh=K0k05Zhd/17ph5jWdXXXwH9XYjP9RddC4EeRfW3pc7Y=;
	h=To:Subject:From:Date:From;
	b=fsZ2jSWZSJAj0f2PYZ5EI+VcjdF8tMMGuswbvat6aJAxssAFR0cjuE+Cl86i7hI4c
	 +Wo2hntGcI2JKmA2XAQSb3TMWFYi56E76ngjTmICxPo9b4WKUuyr2IsZTNhWugeG83
	 WJQm/C+rqMMPc9pKdtm3a/30YkkuQG4jt6yG/KBaGpBV0JNwW426gUBrMPJHwI5/yv
	 5ao03ygR2Cg8dt0U1OIlhd9maNN92gh8Fa5qIk5VBxv2K8XQu9GpyVlO7u/gblcOeN
	 i3KNmI+92IeSlQKM38Wr+twBBwgIHKWJSc3lO93nrdy48uYhcj5pzA1NLpEzTMyp1H
	 nxe0I8+K6Tobw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61D8C001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169216818867.29042.5231865587480409609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c423615f1891f9e368f0b4f09f4e5b348a1536c0ca80763ac4b12ed58fe35467
Date: Wed, 16 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692168188
