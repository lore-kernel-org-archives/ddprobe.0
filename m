Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD3E3C04
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEC3C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679597405;
	bh=Jd8nTo75iavRxjAofI304kRX1KCQZlNNK9LIiwhWlko=;
	h=To:Subject:From:Date:From;
	b=A7sU8jc14hcw4w8iatAXvrtNWLbAn9KJ/Xthe+jQtXl4/xdtVGfglkB1Y6dilor9F
	 xEBuH0+uO5uolir+gQmJiB+WwMYDulZ6iJ+bYAOY/f1Kd59tSuQDlcm2W9Mew6MDW4
	 KJoHmGK44r7owWb4j3BpswaQB98aChH+EviObqyS6wL+qySSLS0dFUxzWYR+jnN2li
	 WlXIkEELiyA4rmAsv/y1VxA9mWSpoQ69lP+mE8FiIhbwRTS+2NFcXUnyRqh7C2iObw
	 10IIKhimXbfTlgK3nm1bPJcW7guvFTb54WOBp5SL1UbcKQufv/jH8ELcZ5mFCX2iBf
	 OnIdMEQENAkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E60C76196
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959740578.16491.15152041180956652450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1c0f9b26bc557a5e9c4ee11b622d3794c21f1f900968cb0657d55b121829af
Date: Thu, 23 Mar 2023 18:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679597405
