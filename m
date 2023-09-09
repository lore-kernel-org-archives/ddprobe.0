Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B77430F89
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EF6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694251448;
	bh=XjJpgB/YqoZcGeIsReotFlzzhygjJD2XoDuwdVSL9qg=;
	h=To:Subject:From:Date:From;
	b=j1TEwzfzN7Glw0YkkF8flONmtd9PRO4tgXqY8CsiTwk1XTeIKAcpHMQ3CIScEUCyk
	 qn8r6D7t8CvQmFFgg1cs19kxjOzWiO0lW5bCii3Mpjpk2Cy8M85NqYDuQqMFwOV1r3
	 iuQFxuBhyjOWAFXVqkPRc/jHN8WQifzFTR9M3Za4L8sKDq8dGc8hC+czlBZ19Ek0J8
	 jgDwkfgoHzBCr+B+eSh+dk9RpmCmhoOe6AxKoL5apyLye2n0e5c0GI/RzaAOTBq0ra
	 1GuRWzxbBIHUWUIl/J1DNn6sa/9L+2J0DIgsNAb9lSMnHkN8z3suXDLm3DaijnFbGi
	 4sGmWCKX+jrag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C9CEEB57C
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169425144870.14125.10857007809890708867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de998c7b31dd50a07add256cce69eaaeea4378ae8c814ff9e12dda0f8b93f45
Date: Sat, 09 Sep 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694251448
