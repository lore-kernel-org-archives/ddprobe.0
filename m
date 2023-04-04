Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6654ED2F2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07ABFC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 20:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680641826;
	bh=r+uEhBBILDK6sE05zJl+2HkfH4IapUwzBaRVcnplQR0=;
	h=To:Subject:From:Date:From;
	b=m8qykuk2PmUSqlRm3e9AOKtvYBtX7zpQMWbRO407B7BVm0SrrJRg055PgRcqNXVE3
	 jsEXNBosZjoE/qHU6+sXM062Bru6u0ktcFpTpwB0F3YW3NlNuvvnZvUW2WKwC7j5Vi
	 hWCS5X63nEgV4FXO7X+TGjyNL1fKy1ZKu499/aNjtJ8r2SBvv3rUjUxAWgXWh6cCnJ
	 lJ00wnQcDJ9Wdr+HZbPNczIlO3d4mHxZ9gyHBejrINEV1o45bRbv9j+2pWZ61XRncC
	 tDkMTkodBGBHsQOwOX/JFW8BWbDJccMhKHGOiABwOoONWGiBmTRfLxh8pQGDlb831Q
	 B9mojqIpu0JgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04DBC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168064182582.19090.8431502314306883199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c05bc645fadc291e510cb2fe256e0ebcdd9d687b1bdf72ff1b5c33ed461eca
Date: Tue, 04 Apr 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680641825
