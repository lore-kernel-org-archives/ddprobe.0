Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34497B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66471C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664854853;
	bh=tarwlsNT6QdOKruOc+mkSGKaUmicGimoE5xGv+hZh44=;
	h=To:Subject:From:Date:From;
	b=MppuHmBservmuQzJCnqmIk8aLdwWEfZ8S0RgCukLXfjjzrWrG0Zf0mNRdD8P60RYt
	 VW1LLwFw/l39Kgbv+wqNaEylqhjwYMXTCr2IDE+ofC35RCamSM8Wj1B6DL6I0JjRJ5
	 RZEY62OSfxUUqhndvGGvFz7fW5H5eali9h4GUau5P23zxz6dfWYufm1S5ulk4Fvbtf
	 Y8pXsylvUtkMHnqFCqHSmrS13porCIm0xVT97BxbFW8G2tN4RsElK/ugRl1MlYSxqx
	 OR/38QHI7lMK+JgSet1ZSxIgiS+6st9VBya2tJTywHENDM04QPUsxNw4hviDu9z8LN
	 OGNJpBmNVXkqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E38EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485485331.15263.2775615108961464595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041e2086300f7b13892f87b337a06b2b41879f0dbc58203e7d061c689c54cab3
Date: Tue, 04 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664854853
