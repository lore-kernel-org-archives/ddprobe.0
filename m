Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C2D41A93
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h01iMCdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55B0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697542028;
	bh=Q67ytaGjOuwrxoM0mz4ys+DQQ7KEH8n79JcRgdanywY=;
	h=To:Subject:From:Date:From;
	b=h01iMCdpYFi1BwbFAvp1C0QlL0RnwQ76OOfJmxkKqadjaiJ1H0wgf8qsDi8BAZi2/
	 0dr67bW/tEU2YtyYj2FWQuE56nuuoelK1fMXtl7uTetxMWatZSk0sdVTYjdddEolVQ
	 zx5Q92lqVkILXMBRwT4vS1LPDv81PzrhYEJBv/WF4wbzLQ+YqoZpKvARL3QVnHz3Fb
	 oqCZAeyW3Nv2VETbWMQBBJiVSu5+onBIWj4BtOwVoMBzHEdadu59FMq2tf/vR8FlOO
	 dQ0hi67Aa+u5UJJ9yT9cbpMJoBNTJeOfIm489O4NFD3Gtq/UVTQ9Y7tXYA216rXsza
	 8oolM3/gIvzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E6CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169754202866.14408.3831420172101193168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19c04d758ae5294af86c08a8a8781a65de86973645b12a4f2860df83750c455
Date: Tue, 17 Oct 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697542028
