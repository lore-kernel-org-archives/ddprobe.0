Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C7563C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93BFC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688517968;
	bh=ilU6k0+CMIBzB4jNAisR8Tu0ZpuLRo1zWwHnQDnkm/8=;
	h=To:Subject:From:Date:From;
	b=fXFAZ0PaB0ix2RbBesp9YK0R7Fi/XFzeW/z7oUkHDczZygrNM2TDcaNn4LkGqXX4g
	 qdPgS5RagbExhzot1ohB+Lit/Gtg3EOGCg9lfHD+W+6stvtUnmC+2bXnfpVFzBSwFR
	 jh0+E7Xcj5IWBdOAqikKePiPctNqlFGIBFZRTfK3Pur/MWttiR9XjzOEv/5UC6rc/Y
	 fL6AXn7qwM2feBJrYJ8hYLgs9xmttdTXJCpsdfHXpQ5RWHvci9BzjqEEDJYd4WeVw8
	 /oye+uNuABk35G1Bcu5aYzN9JgUH1v/7vPYfK86+LCtaCdiZ3wSeJ9Apk9UQr9qd5P
	 Fgng5f7lZTMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C62EB64D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851796871.24768.7049871467491320135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d7e60d7d595856f5aa4f6341638947818e8647e3d0d12096025d4e7513146d
Date: Wed, 05 Jul 2023 00:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688517968
