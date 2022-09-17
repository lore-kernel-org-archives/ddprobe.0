Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B690439B
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 644A9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663441853;
	bh=lIE/tUkAroFmQdgAZIyOE5zZ5GDyD+/+vCr8EY2uVAk=;
	h=To:Subject:From:Date:From;
	b=O/mhFWP7ylIffEFB0F+V8gjDp1Q0pZwKfIlcfoG98Ga2rRFFiHF9AxsKdgUCH3t6z
	 yH6pca4na595bxFU0Y5yG5Jx2u2SqoIKsKm67xmA4HXU8JDb2NDPBNDAPwfrxHP9C8
	 B0X3RYTyG4cLkVa/q4VUeUT5+3GE9EX5AaD6hHPx0Mn+f1/yjdiBYPr7L+TnkF+0L+
	 sAAHyLs4+YU66G6lzcIvz3XJeKKIrkNhC2vp+VQ+lzJ9TMEA9MGSqmjAevA6Q21Mu9
	 l0hIOtWv7ulhafiPQTm2Mzna/FycX98nih1ZgNbnyodLEVmbaEWAG+kovM3F0GV5nN
	 uw7ZTc8lVNvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508F6ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344185331.29134.11191520796029862461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a5a88f632517614a071252b38014d237012e0e0d4abaa875f95cf047ed7a96
Date: Sat, 17 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663441853
