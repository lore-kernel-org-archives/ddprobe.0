Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7157C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0D2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661722852;
	bh=pOrhI2mWRTrp4/XyxZqOCSG8i7NmIxq1tAmfuND2/K0=;
	h=To:Subject:From:Date:From;
	b=CS+DuOFELZkfep9n1GSXYfR1rj0HC2VUIYlBKT5Qpo2f/4YVQK/pAC8xULbL1inDO
	 GUokMPEt8It8KMsYwGV7PMcH/kEPiyklNqQFhBzFj9vS1OIyUjq57+YNLJTY+UClLZ
	 ETMUOojBmIemId5S3eDZzdnG5N4u2NzyC8LywwPmNj754+LzJbxSQsRNTdedg+395S
	 T/t8U6/B535N+ow5EDAYII4wkOenDETThrIZUgan2iHmKBmMjsZ6GQQ87PkaN4oFZ9
	 uKv0QC7U1W9qBFqOCyd75BODk5XczZjldBzFXlpK1MLIvNoPm/PGk/0c/uGxw4Jx7P
	 bD6Ro3ZgJ7CWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52103ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172285231.19945.6758836542059295971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d78aedf6a5196f8f402f2ea4ee2b3120613f14af7017d7b481f029aa6a42a71
Date: Sun, 28 Aug 2022 21:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661722852
