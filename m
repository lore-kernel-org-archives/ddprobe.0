Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F6EA23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF1EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687831389;
	bh=bEiFN9bNFtnFZAcg5pP6BBjDvgT90Tx+LCqBuFkJnOU=;
	h=To:Subject:From:Date:From;
	b=gSwX0eNk2TEci3DtuzspDSqvWwleGJXDHFw4tngtvLsZJUNp8lxl6zKnJcV0ZLojH
	 fwcWlmAybcoveH46uFTE0t8r3clHKy0x02EzhNUcW2hTyi1QCLrZnlf7v395Emgzuj
	 fqjWIYsihesIH0xBFSz9w9J1XO+EUg92lMAiKH3pPjjHNymuJBCIAzdLc90qi3VWso
	 LuB8JHkrbbmOrPyru0RrBlpTImKiIaleHwPT5DPwtuav7tGtVltC+I6H8MkBdfBZmr
	 6MyoNzT8pZTpiKQ3uOGc53KghHy+LfXhyV56NfHEKHzLyGvTHYuXH1yidq5AQBty2Z
	 XGVT3IvARBXoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B45EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783138880.2773.2503236050161783542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8aeb2eab55b7fe559d204d68e40f901ccf699c138d11bc09cd0858fb47eac11
Date: Tue, 27 Jun 2023 02:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687831388
