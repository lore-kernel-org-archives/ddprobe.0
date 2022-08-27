Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB39F15CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71817C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661643652;
	bh=GMwemQ257Lsli/XHTz9Pggpdj0O2Q1D/KOph/K/ju28=;
	h=To:Subject:From:Date:From;
	b=T5DQtyAczh3Cjx96hRPEEUlbIALg7761j6bcGYVELxuyeYgz4+8kvkRr6JQhDbIiZ
	 q6TKwKRCweDKvN+Vhw1Km3mcCmEUrUO1arUq0BVw21Csc7uGakhpJwuAOWHXqLmT50
	 lEzVVnoSdqV6BC7KjUD4WF/9TQFvEX3UL7GEN3n8OEA0M8sjvDiVAEVD2WC4h1h+rw
	 46gTW5cgSh3/bxwTa2ENZSGd0lXO96pvi1rJPH3TQO9ZMCJF8gz71ijk9JcaNEvu/d
	 Vb85bFfmECXAPwlOAIkED3jycNHNcVHkOdd+CIkJV0jdpTTIAF7m0+DpWbPaypFqU9
	 PKmhNNgHNXbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547A4ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164365233.26557.11536473247066698861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d9d5ecabc67c98ada37f490bb602723fcc80541653b24a9d69b63ee9193198
Date: Sat, 27 Aug 2022 23:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661643652
