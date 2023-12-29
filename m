Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D02017C0
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lw+thQxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B29C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703818096;
	bh=byxm53YPHz92mOlP3p8caRNYcWbxEviq5evCYsR+J80=;
	h=To:Subject:From:Date:From;
	b=Lw+thQxuO8uPZ6kQyEA2/P7OnWZCwhwIHsHMMMlN9/no//F29H5gAQvbrvRmQldeJ
	 wbAzq3T47YyUv1ZE5pPYLqzt6sfwiEje4Qh+ht7e7aEJSKL0w5fbYzoFF9g0qDUfLp
	 VFnzLNO+x8uqOI0AWfH47m+Pp0K+8dqw2mJQf++jXJmBcmWr8+16aUq5kfZS2lCbdF
	 DhrJnxxXn3uX7D7930Fw9ew6/l92WnF/UZNdbF+4QFipN0FhM3J+ezCTHRtCHPJUgO
	 D4eLAtC+ZrMkC050ohoFSTUghIh6diQLlNZl78p2iciUBwIIqCoRH/aLSHaeCHpaLD
	 QQqfcsHCEG4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67294C3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170381809640.3780.9217178972425403514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042d415222d226968d05a5a039abcbd5e0eec138012fcf9216a8f7625c5ab15f
Date: Fri, 29 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703818096
