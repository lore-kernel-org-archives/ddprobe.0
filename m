Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3796195
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705A1C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664764853;
	bh=d0aHUWKNsxzlALtA4cpNNo9mwD4Yavn+tOAqa8bskIo=;
	h=To:Subject:From:Date:From;
	b=jl4FYqHpkuZev7qw5ZyjnU9z3cuxyqKIWu0TdH9RCjQMqed4hEKztMbJhxSP16v+V
	 MuFoTZrqozCXLeXQCnCx2u+tOax4VSmpj0ucq93ve+UBIqiJ6cbR09NwiDeDGQHaV0
	 fpxLvU8JSN1HKZuxAzsGQJsF3bKimNBXgLZ18hnL6ew8XVKeGu3Lm/fKanYjsr6x/C
	 fp90C17ltVorx2TVCp5JiDvnYRb8PMVy4Y97zJxPKLmz8BPGKBsniCvT3zZV9tYVdC
	 j4n+2Oeabh0YnS7np1KmEtXqAQlyMfPR0Q2hc9yqUX8byuidUWHwvr/yw+JZGb5hs5
	 h4wGC6wuC1D5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5679CC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476485332.31635.8284723017895664421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25cf018dd5920234e5e05d4940020922189481675a9260cf13a7816ecdabee2
Date: Mon, 03 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664764853
