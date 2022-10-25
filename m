Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B531C7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71521C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666711853;
	bh=Cu/RxN7idREATmbk91GwhOrHZvAWBJe8eU+pvhFwRH0=;
	h=To:Subject:From:Date:From;
	b=u/jRyC/KCeQVNnMpZIugXjwPNJL6pHLmQHsfzB4fBRae6ZsP0X2Zq0nSrFGDxb5E3
	 8Ev6nRwV9uqwnVPD10PDQBrQvNZNKU39EYO1kE754BGtI20yJ1KAgVZhZZX7AOShmY
	 eADWFA0cLHIgz38JA/BsVWkPwkxlggYikZ2wUi4BWUlbLANHWZbKOiY5Q+a8Cgx6M5
	 /2ipPcJIhAsydtGj4kMkFwqeOLyk4FUojpAXMbF93c8/Ukg6+UYH6Qn+j/sB9OjwjQ
	 bBZvRiRxu5hu4OnjF2r/AfdcZlB2jqkdEIHFGOtdkM6wNsi5OvKSFl2VR2KAaDTLbm
	 TXGc/F/sU0Tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6D6C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671185336.32052.1574639664219083452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d86a07e38788584b40319c8c9e067928669a952322edbe260a8d1537911ed2
Date: Tue, 25 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666711853
