Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9A1208A1
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6H5FR+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 885F1C433C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698946696;
	bh=hB5XgVeIY4bvHA8UO25lvHlNzUWx0e13LWy1AdjTJRE=;
	h=To:Subject:From:Date:From;
	b=s6H5FR+BEVFuoSAxrt/LfWGJfgZ/gK7t8GHg9K+XbzFtKEQSsLdLx3RqOmJUzGdAc
	 Jo82N/TVNLb+QI0Fks0208+JTFHFc/OObcngV9sGix+8roHpY5aYtGYW6A0hYM1Qad
	 jQSWJc2uIIjHC4qPlsY7nsReL6q/PZy2G5dK/mSZ+UGVBZvVaTxKwJNJuzCfFLhBih
	 +3gGRbKq3eXZ+6OZUkWakzU54MF0+VdDInhYYLHoSz5C9KjliCMV5QSUCeB3qdu6kn
	 phHTzZXx1GUHg9Va7oSPAdYR1UVjZNhuUAlX/uI6H3E1p+hrzPOeSnMEEhXJcsHKER
	 uGzLOHp79SEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AC9C4167B
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894669641.30668.12892758580458980345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e77caf924d5467647a3af3e80a2c2d3c7a28f7dcac8d7a88d24319900542b1
Date: Thu, 02 Nov 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698946696
