Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA15020E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90D07C433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671005487;
	bh=3dMaC017VnuFbeJHGNcvAzoJIPGXj9RfNtrv6JYxL7E=;
	h=To:Subject:From:Date:From;
	b=Rzb44sJfCjUL6WJwBWfXN1DeKmAZWAU5azjH5Z5gZiGS11JWY5oACsOrtCifddvXZ
	 w06cXS+cEPn0BKzSGUEUQ5gDffleeaqy0Qv8gY128Li2dM3gSipdc7SkrZvkr77WBa
	 CwNUyp4V1w47l6HNA/P/cnxIFJJ71+cVZb5W7WM6whJZP5qFDI6aMXMSBPQGJZjNbm
	 tximyMY9wzqnTAICvnwB7A+JVP+qTqTyFX5q5+e1pfPEG+UG+yTq3OayOtpUU5owkC
	 hT8KK8bvNNiHMMV0mxU/oihTkWRFE9Vc5in+dbPs0k5ODBX0Qlf35fKVrdR9/riCoD
	 m2IXLVTAOHGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73013C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100548744.27873.5041478860037669223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7c75f44b1a5ce4a28402de2103f72f28f2ee91d1fb91f980842ed46e444102
Date: Wed, 14 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671005487
