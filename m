Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D3B160
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D480C433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666507853;
	bh=WYBMZEoHpwx2Pn0RO5KAefaDcbsB+YsOR2YGrH9bNwE=;
	h=To:Subject:From:Date:From;
	b=P+8L/kzX5h5FVHRwbzF8lWNxUMf7oKe3pL2DdKFcMIzEtIjxqH65YZUvDEvCZvVCv
	 o74E4o5prOsv1QUKss1SG5CsVQnHLMJgpJr8gEZF0EDurwKwoEWeU+rANLHGcyRqp+
	 uP592BsbQcAew+4HYKKjHZ3E94ObNK7sD2dGyiGAS3K3ee5ULvlUytAxC4PeIZd1tl
	 5YBCEWJeubfK7INqBiJtQ7Vt23UOJEVvx7O1Nt8MxCNAuGc/axlQGra3Oh0Kf6tNBe
	 8cYywO3WkgBYVtWh7A94t+5JCySbtsTkhmo+Sw8lquYU+q2UzZzkAk6N76AoLUb/eo
	 P2gEwrGcvAqiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5126AECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650785332.2659.16414001400609657143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364af527a13468fac05a9a25ce4df2c0a83ef725f45e81a72b3ef0c485fa505e
Date: Sun, 23 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666507853
