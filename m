Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38E77F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745CEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665943253;
	bh=n+MannP0f5282Ehtlecj9YN3/nwO0l/ZNH0LvIdKIgw=;
	h=To:Subject:From:Date:From;
	b=rXN605cGDCTstofoL3xcoIfAZfUKqUdKvBG7/Z9dWXduzHQihTbJVGWVxqEF1+c2a
	 fFq011SGWJvkLxuXQdf5kaS/5nthsIaJe9ZmAoC2blWiDROZoqf3wvzhcnTCwuj7Rg
	 HHOOEGM9P1glMwPYIAO1+uNprA7SW4Z4AcbQhKYX9R+v53h0N4NWOngt9wauxaF0OP
	 Wxvvu4yJzM1nYg95QkbUimkuSezKx8PIli/knui7zTLoGVMZPh+imilRQO10GAegiN
	 TVsR9pxhTSAGwM8D/ooEMu1omJKI4udMRcFPv7B8MW+Gi09U5NSNxqFylyf7HjZixH
	 pV7ZKjXxMeiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC06C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594325334.18145.9394849192489711812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3659a74b20856a4be5ae3b3f8a44edcda7ab5fc38871f0ae08635b3091fb8f6
Date: Sun, 16 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665943253
