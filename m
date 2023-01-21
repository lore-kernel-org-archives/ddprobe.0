Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3091536E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F9BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674277325;
	bh=9zokCPia7j8dUIYe5RtrDelMRKmB7dOPn9zyg7mwgY4=;
	h=To:Subject:From:Date:From;
	b=tQPwGk7Yk+m63gMbZM6A5EOajKk8dYZy4Y4hTzetGApcEJOF1DZworqHVcnfQ88yy
	 yBDDk16exq/BVsr14NBhM/2ZoNSagnHOkxt2XpFN9pA1b+FLVWCTdG7MkNw/jNDKpO
	 7uFUFbqi6uYYNh3g8sAQyF8xJtcog/JUHXWTJs6+DppQf1Vne5k7pGxM8pZCj7oARf
	 AE0YNM73I4nWCFoEQ++RryDy8FSBHG49EQRWXuAoOhUGhcfdkp+KcsH83iMSAdrRrO
	 jhPfpzIkGIvljJsOLNQ5VTc6kBroimOD2bfbrRVq3XZIx5fkp42asmc7Cp6fPysvGc
	 vWD6DQoxgkd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA3C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427732574.23173.3581173205995322241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899f30deacb0c453779ae174373dcdc61cb9b40166cb5a9b93b0844b21f379d0
Date: Sat, 21 Jan 2023 05:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674277325
