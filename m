Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4716F20E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9701C433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666392653;
	bh=yIgKm90/vWDhLoEcf3kjbIMo7cFH3hfD8h7BH433q50=;
	h=To:Subject:From:Date:From;
	b=tTIFZ6IoGh82BLBQEy8RPrMc4OrtHx+9FWG7mshduIuU/jRtUKiVtCd27ta5RwdfQ
	 erSmK642gO9GRF7gD61wSbFagBtiUqHIJsFzwP/2JGArJvKCda57Ve3VC1XEbL7MQJ
	 ctg5OFC71W1PkTBqaApsUTiOAk2f29E1sHdCkZi7YPEPQUbNx8wfzOjLPXQ1xt7IQz
	 vv/B0KsVCRrOfgJT4eA8OkqO3NCNPLPGfSEyVrgaCiYj66zGZrJXwH+MEqXF5HDTXU
	 I0IELgmn0EVcnTgbpL3UUrqOKnyA4Avd8o8lD1N/5TIFqrxE/AIxK3Q664qyji06Fp
	 L/Knda7oSapnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF42C3A59D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639265362.32389.8472863072165706548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d0f5ce383ada212d2a74e03b0758512fac3921006dd64db6eac69d41e0cca0
Date: Fri, 21 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666392653
