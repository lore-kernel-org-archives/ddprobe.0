Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76BF7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8605BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671863487;
	bh=7jqdDqcTAPGRSMc3WV5K2A01VqQqWzG9J2yktgxRTNg=;
	h=To:Subject:From:Date:From;
	b=DZOJLV3fNnOtxtAjxjUgr9Dw0zRD6gWw1ZVoQBW32ZfNRgIKu5UcA//h6slZIWGsx
	 5RTwWthwXobbK6vV5DfJvcnLk8FZ3Jr2mrYBP13yPMyb2uUz5OK6HJKy5K0LtMuFS0
	 3TYzmFWxL+L8i/z5mTmZkWLM8Hcvdzv95FcRpbk1e9Tx+07wCSEEMJgMK+NVL/+Dxa
	 jCnGezH4wkATfOe3G/E2yRn42jsZ2m0VSb7u4YlcCOTiC2m6Poa0lH03jWfry+TVWw
	 re+QgJRuY36hCj48sUWYuEx2ksN1i7nSHzTdHLaISWefF/jPZr7+eoqgUXk1ThdAXv
	 X+kx1RLht/mYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6696AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186348740.29150.13539505913636913235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5814fe45fa4b8bdefd87c2758a0c8e0857caf3259f7164ef49234cf75b2b3ae9
Date: Sat, 24 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671863487
