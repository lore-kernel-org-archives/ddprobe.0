Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB60820EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751CEC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670305254;
	bh=jjysFvE48/bOdJSlz+3BKhN1PkZ3CN1nk6gu3KqVl/E=;
	h=To:Subject:From:Date:From;
	b=ZboMpUbkWe+tD6T34U21nMCYoGzwSmLWVzDqmlB7lyv2fjHaajHnJ/bcK/0DJe2KM
	 Kb+sNGztel0cAT2g6EbCb2+aXBWxkUZBYR9bbH4RztbN40mmnPyUWz4Ul6zu5qvpIc
	 ZWCIHYu+VZDIyZ60QtTwQx0UAZy6pSZctAD9dIvOJl0uaWgKQ9NwJ8wexDedILM8Lp
	 NFsHeDuh/6aoSO/IsTFBiWD7X6wjV48fHVO5vtY1NnG2xxbaMZ5wx3cKAlzltTa2f4
	 a06H3wNFSuzU5SYi77XmuOX1ph7KBQxgyafb+uJclox7OGSaMytCodFKuQmsa3uBFB
	 +OmQS0ewrH83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BFDC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030525435.11106.70521722259087889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4a4cb2ebaaf103756cd04a392f1e563e5a5323ed23dc4a2c5c1e6eb178009e
Date: Tue, 06 Dec 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670305254
