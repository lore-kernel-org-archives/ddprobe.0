Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EED2BA36
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D559CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681417145;
	bh=2W5xcrZDU8B+JimqeYGZd5O7kAcWKUl+wsQsOJ+RUfY=;
	h=To:Subject:From:Date:From;
	b=lydOiIKpTD5hj8FgSspm/3CLKg7CmQB1cBsz0gqt3tZKTfCutyrVNIRR+YCp+GEpE
	 sJOKe7aTg2VwbDcNhQ8IfFy+ja5tSB2x9oONseYw6KfodNhVK8mdkpppriHvBnCoLM
	 IcvceWzsoaENbDwNhN/w9lRLeY2OO+T3q8OLEve9bx4JotbnAospyFJnukXWDuh1r9
	 XH5gG1jrL6UpbCEMFzCnbCCrxQ5IXB3z6At3sh8+cdn4Gb8UqQYFB0XEEOgylISMeF
	 CQNses3SkYe9ji5oHZ6WGstyWIa1n7dVs8wPt1pb0B3ZIljoIKTdQqKyfG2OLWmSUS
	 H1YiW8XjowdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DE4C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141714574.25399.9273230232408298698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7709ff9cc5ab4dd6afc3958aa53e5367f5ca2dd94e4acff9b137650aa22c187c
Date: Thu, 13 Apr 2023 20:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681417145
