Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0822863BC
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPieDRZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8834CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700386696;
	bh=sSLeOf3YqHno7MRRoOf1ND0y9xIisvvnoUw3+B0RqpA=;
	h=To:Subject:From:Date:From;
	b=RPieDRZLHJZgOePUe3eZxPONFNOHPrDikyNwJ/+BYGncbonwBdCus9KRH3hqJk4b4
	 oGFKMH2iRH4WEvPIrYGMvBr52muHuY0d2Wu0BpTHuGK1zIvrNx2ltwlcOO1rpDQK2H
	 /DhR3cQ8LGOScZyHRtXQXP8mBtqi3kpWOnzFyqAY26+t8ZSaeJPOsd2AA214WwLJbM
	 bODwFCEm4mg7VwICwHTMODqW8mYC/+gVIPyUOZOQxlbmX2b5zFUom4iurKhotmO1ta
	 CnC8p+QYVkYRNKD5Xu+nycM3xjvZWmFFiPqsKjeE3gQHY/NJYW9FvhEF4ywQX/Ja79
	 Ei3i/IrCxsDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A991C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170038669641.21572.16438929723545780856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644c44569b463f462a1e0a9c0e61a0c12de9ccaad976ed4228a9205ac34e5603
Date: Sun, 19 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700386696
