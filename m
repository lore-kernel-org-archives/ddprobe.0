Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D57C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F0AC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680660425;
	bh=ocSu1NFrw7cJoDAWx9TL6PNKkGLD3TwseCa+8LQgO/c=;
	h=To:Subject:From:Date:From;
	b=ny41LdSvi/ULWPNEh4PQS7trcMFqCKP9w8YjK+WwCEQ7tipMBPpr5YAv0m5oKdmvv
	 /yNOU5OU4q3OQgkM/Oh7tyFE+oVYz2DX1gP2LFMV3sH1+bhhIHpIj/LdXOTb+ffEk+
	 Hv3H5KMVGFVay/Qu9oqYT1Td8K1A7vlkhWn8x1ptOTmQg5AKd4pWd4EKppuO788h9N
	 hj8LZ56CUueshi6tkEUwfurbXisN5PxF1PvU4GuV4iz0GRBfMRe6mHWz/HSFXHqX54
	 gTHszXptknhK1F3Ucbzv0wF9RE3GHYmzeXL8sI2GVGmzJETIa9Y7jJooqF41gyKDp4
	 Nh1nbT10Atmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE95FC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066042577.30235.6133137679963570458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0097a20547067ec5e07d966786edccfd7fb9e62d43d4ace19ad70df8794603fd
Date: Wed, 05 Apr 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680660425
