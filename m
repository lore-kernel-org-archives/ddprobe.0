Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8298A376
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49D4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691550188;
	bh=pthbxoYYDATjqHFuUOdHNI20WmEuMWjIRbGoDKYvKQQ=;
	h=To:Subject:From:Date:From;
	b=A+DHX0iHJfunF/qm47l/SV8bVxfRyrmGOxLCp296KjdIAiOg3xcbuOlt3l8aPUz2K
	 ClCYPscys4SsnYWb625pWzJKv3VzR6xsMjHwLbIXrTMRjGMQz/Dpm9TZgDXZFtWLSN
	 LWFPgGGWWjRosprOU8lMt77PwA0XYMsTRe3VLNlPSsLN0ddfxD4Hg5++PMKdq71p+s
	 PbHxKZw97lM2RoWGTQKDyzsE5sfLFrOJvDGJtoEOlNS0Lbpnx97UIaBhGfRrJxXRJH
	 TBYhvDqHlo/mVuNNZ9/x60PlmiBAgNm6Km8mtoY/WR0vpzn333ABI2Rcdi2rvnJkfp
	 qp9Txknk8MOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B0C001DB
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169155018875.12582.17894692771501234560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9210d640c8ef976575521e6e4b0d271b9e8f7d1546cb9d4078ed92d3cc3c91
Date: Wed, 09 Aug 2023 03:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691550188
