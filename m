Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB23EBB
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN2G14et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856C9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703378896;
	bh=hM+czcFR566nLY8bFIFyReG/yh84BqfNBL7CGJQeGkA=;
	h=To:Subject:From:Date:From;
	b=aN2G14etO+SDw/zTK3OUtKWLHKpKNg10niS4edBaXRX8xY5iJNiG9NKgy78LBC2xD
	 vymZpLxXadwkfm9TYqFx+U7c1SKamHpAsLIF2ZtUpuYGrvnpq8KMhibfPcixU6zFwV
	 Vq9RDyOzuLG+8dtcMYVW9XjUpkUXe76N0AuUZ7RtHYCKSneAbyW4R1AWLwA4sZ5IMx
	 pOOG9UMX/NJWmmmaQKEtrbv2zNIh6ARW3NgJpECXZr1LmIeRA4YqU6a0RhrzCvv3Ic
	 DSXJx0NbUFqsYqPYxDVCiHK1o/8Gh1wM7hKv9fuHHh2AVjabzUErGGpCXS/x2MTnlP
	 8c98YZ9MfUzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636A5C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170337889639.22641.6043749831064679560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a0eef6c915055fcc808b1973634d0ebad1b9df4c4df69ad050df8289756ef5
Date: Sun, 24 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703378896
