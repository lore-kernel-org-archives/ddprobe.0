Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D69E110F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8842C4339B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674730385;
	bh=K/31qanfZDakZ/FDJpLl4HXLH721I2rZfpyUPNXC+3w=;
	h=To:Subject:From:Date:From;
	b=bqzFGo/ZEw+oJ+DPgL36HR6/AvGYYHqiqPzpm/7RHMnWKcpeYTMN3Ja/6eVbMQUQZ
	 Ocm6U3+AkTlmKMIFxiQKWBrKf2UyKRqUFtpcJ/q+T10e4o3BV6EZ9dbr3WkyeScQ75
	 Mm78LJF0vrKPQrEK/Zz+oMO/wyYTgvw1MG1VRahFogT3m4X53poGQb+A/j7SinAsaW
	 dgZtHYmqJNw/AWzmkax+2Qp4vdjdbgXRJN9mm0QomnKjBJ60amks/HZ9g2SQ39iwjA
	 mJdh8gHDdv+ZgENKYy6e6T7PhRi2S39ubt+fNC/Kiwiroz9WfiRF2EbR9sLms4PAWM
	 MB8xLPVSxgsAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B676AC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167473038573.24392.14849311410035102117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f59ebf0318574f9a7daae6743b11189ec0b826c54c07e3798a4f0d250439e1f
Date: Thu, 26 Jan 2023 10:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674730385
