Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51AE2119
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8994CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671212487;
	bh=0xkzfBk/VCfwy/FqFfq3z/wjRvubaCCfwiRUqvu3Kb4=;
	h=To:Subject:From:Date:From;
	b=UTXnlBZQIn69hfBWo4Gowp0FqYJNNyuE6TF+QzEmQn0MgxCu5PVIUtovHr+WnI5Xj
	 eBJXopPD6RoYDhd1WU53YeBqchfq7sACdePSJbaSrsGakPomo7Rlu829vltlHMu38H
	 bKcb5EET5JG24NG2bHJjprpbqTzXu0vNxNZdbkDrTa3EsvJlULrGyD8NhrwgGNyw+k
	 cyn7BGH94C5AA1to+0xOb61kKOV+Y+yYY7Yo/6/BtTfcfNw3eArtoIGvtFToHB/bZD
	 pYhisoXgKOqrAIl080oUQQL/KkWD0wCdwHE6FoBFMNmBKO2//G4DEYb0s45GfMSM1M
	 hkAGSJn8a0UpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEA9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121248742.29138.9289857462335706766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6946d0ff1d6810c57edc791111b02943a6f01d52bcfe6b9fbe29e5fdac7fa3
Date: Fri, 16 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671212487
