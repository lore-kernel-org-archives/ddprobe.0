Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24F3C38
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 11:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29EAC116B8
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694084648;
	bh=Tax+gdcyNIjU+3c7fwAEIPYmcU7d6a+mJVjen148x4Q=;
	h=To:Subject:From:Date:From;
	b=Kos2mCc3a/GxSEALrCJDdjptqKvcBWbgsgmXVGP+4sgKWAKlHUpfgs3jnDqMfpLIl
	 FOpLfiRQfm86tl/4S3taNvL83KdQw9gUqLsxFh4iaV1r6lA01w0KD9aTfbe5zkwgFx
	 mjoSR93zM9i19R+E+qtj0ymTQK+ca+2UoYJP388WqLBrBr2SElrMXsCTmLDPXYqNP2
	 emCvDER08Fodb20hiSn9oORRxbJfZcNQ+3JTx6U7GyxuuTdspfc1yz9HgGHHiDFkcI
	 qwx4gVF0Vu2ReJo7hk1AeUk9QbpvcG+/C2uikwBhMJdYgOaLxYuIxgY+HUQN2dxAzp
	 Ld8aPPYd+81pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4872EE14DC
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 11:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169408464866.3115.10070875708032935391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38730fe636e61d4dd2274b76771e64a7d896e17f493aa91740274cbb0a94caa4
Date: Thu, 07 Sep 2023 11:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694084648
