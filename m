Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C115063A2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767F4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672876887;
	bh=drDxNz127JG1xgCYhCZoXJl9WfT0HZCuY1IUq4Mp8+4=;
	h=To:Subject:From:Date:From;
	b=Fr9gWLkUcjJKBtdTayR3nTPpunF/rNjDRzadoPRkl72rbU7qOAhjXrXc4bCoebf7N
	 sRSoLMq1787k/HU16wMOSh6UVRhcGMUzrkBGoRt/STTlP6gcdx1G+2Cjn0RbP66jh3
	 zh/Dt8zvi84E3y5lbYVo1IdFaMRJ1uG4NGS1Xtd63Ew5NqorWORzzZJxy2yDLhj+pB
	 SM36WpeRnGcmVM1ZLHjdh7kGSKDSr4zLgIe1Nz3O1qHJWa9mR1mRkh5KjKinPCjs22
	 jcBdPlWYYplSc8VAsPqYIt1YLsrz/sAn4s5stuz3Mncup5/BLHFPUP0EichQDO3tFR
	 qRe7Li041SjJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAAEC46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287688738.14617.15262955637630072302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4ae888e80d5fbe32d13305412dbd791b6868b32fe7cc78aca84d59f4e19f8b
Date: Thu, 05 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672876887
