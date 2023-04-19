Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364A828F2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5270C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681898045;
	bh=EzscCZ/iWp1gqrgWV09iNcKZSMVLVTavlQ28GVdT09s=;
	h=To:Subject:From:Date:From;
	b=ZxPfspn/ehOVtxPpM3/Dx6jaY9UCRvMSFriFuA3g3sTNWDdQ4eIuD3ArCx9epvhiw
	 ztPpdZkuNuH+Wcq+aZhTemcI1KbeUcDL5+4opuXR9Uy5nx45JbUrAzZpBM0KeZDhXA
	 x7KQKJvTmddQvC2X0xTkTvcQysN19ykynZoN8xF7rOu6dYQEAjhbl3Pr+TU7KQSEDg
	 ibUolMzBjqgQvtie+mTs1PaKT8yooQlVMH75P3F5123wGeuWuxvD/1EMivMFBZ0XK4
	 K5eKDu0ppNYQ8ZKojUQHWtuxfx27ReCjReH9nPn6LT2ojHQ0QKcE6anOBkPf/a7BNF
	 cLuvRKaupGdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EB1C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189804574.18354.205395034924272303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11db7ac4c84bb4133685b413cefa937705e5ed432f0db3bf94a5889e9a074408
Date: Wed, 19 Apr 2023 09:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681898045
