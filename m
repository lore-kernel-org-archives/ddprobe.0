Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8ED12B70
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9091C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695722108;
	bh=UQRyeq0usrVlO+DlAU4cC965PPfhUM6f8Tv0u/A5E1c=;
	h=To:Subject:From:Date:From;
	b=ExGYQ/JXzBcYhSwJQbzzXpo2gvPPkaABoYpoa1PsLmzpElyKLef4eSOB7Xn1zFqJ0
	 jXsNde3hjpylJ0Ynj+5MknugX1Ds+jOU/a8Lj/sq3Qcxm40YIELOfGP0R1fZvf583Y
	 EQcVTix8c4y/AeIzqb8bVkPd0v9Z6sTg0nk0dQp476MgEM5ZAswNYZ0/rn5MSw2ZOC
	 HkOwET2Wn82MIpwh92DZlSPAaLclylWQKj68KUfKMbtF+U9lSSJbiqfeETalBkAUhm
	 QWQY5UuiQqTA1trIdTPYjwyZQZDZIqEJERErfInzpW7vP+auH8jMwBDqyZbF0yF8DE
	 DvsY95vT9TlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC25E7D271
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169572210869.8881.1262274436069285232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bebd75852a0bd041ecc453ad787f5ef37487a7f08ea5ae2cec0e76c2fd1c8af
Date: Tue, 26 Sep 2023 09:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695722108
