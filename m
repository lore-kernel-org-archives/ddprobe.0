Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F00EA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71849C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662804053;
	bh=z68sk8zGD/yGQxKivijgX5bz3xyryn6a+T0uB8xRTP8=;
	h=To:Subject:From:Date:From;
	b=WLUFLvJ0gU0t26Kb8GtAI6/4BSzglDt6iZJHCJoXD/B+Cc6O1UkxY9A8T1mazBrBw
	 cwWkVJV5T6KOfOPD+5I12KL1yqqMTlgYX0itq/OmYBLmGqqSpt0iVNKLrI8CEfZ5J/
	 wyGE769T/EYJ3gzjQRqbFsIM5Um0d0qM7eTgLG4cOZvRj74WtAAhEyuh+UxTCom3oZ
	 mRDCJd3c3x/ZDBu/Dy+OtNMxBoi0lYLwhyXTR298PqigpXARV7RYUcGXiFmoVSJgS0
	 ZLNyUn95HsYvqx6pvGx+bUXeXWpDBkwwosErMqPnWQ8RXk8XqDFxEZubKXolxis8ri
	 msPYJqjGwHdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B75ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280405333.14414.4659962454615963495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1461bd6f3c1eae8043e1548b41b10c5b734812a38ef81fe8d1a24d8e4ebe12
Date: Sat, 10 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662804053
