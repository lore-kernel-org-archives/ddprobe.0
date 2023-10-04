Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5140521112
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 19:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9SYOCL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B58C433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 19:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696446368;
	bh=Hc8W9DDAaFXsZGQYtrc2lY3EU5d96MFFqmOq2vLZBc8=;
	h=To:Subject:From:Date:From;
	b=r9SYOCL8kFLHzVgzA2uzZo2nZtjqy5rU3BcG9BXAFmuYTmuuNB9F3z3Bwi40aGl4Y
	 nL5B8+9fCHbyiU9l2y+6jGSijhA/YU7gz1Ic7afKie7Ajt3IjcU0Tmk+mNGpcO++LE
	 J6eR8sUFkifTgr5jMHoidg4MRawAnWBJddDbLE9PuWOMzsV8EYH9JRQqwH+z1ygGeu
	 s7QuEiPS01mEpPMP9sfHcuW0OTYqqLO2wXkSe5sZ7bSkBBDqYTRtT7lMljUQXeYOBW
	 Q8zGwFdndjeesXBdNBvciPz4bAIJpFhbXOPo8BQ/l2kcl/8iMDzG/eY5apjrRg2gde
	 XMmsy3g7gO45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE926E7C4E9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 19:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644636869.571.7597394970621574688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2597a2a0e3418dc267c28393ea75083c8976f0b42c2e9e065e3aad29ef6b5f51
Date: Wed, 04 Oct 2023 19:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696446368
