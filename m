Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3D117737
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E30C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688154788;
	bh=OkUoACNxyfGYzEpRd42dWsZqIwslM+VBVFItFM00m1I=;
	h=To:Subject:From:Date:From;
	b=XN9GVB5qn+ce334G1236WYVVKIF7BZbV/o8qNmAdldwPM4AUjeYJB7S9OxemQT2FP
	 drO08ni/F6ItUbHOxxB74qBc3gh5URozif0fbGHgptvrib7t8wZD6CWNp86BRxJGRQ
	 bXV0zsdsiwOELt8JpJurt+CuKo7YVsFoFS+dAPjrJdsW7aAaHjvx2yRGgIsRC5GBul
	 BsTK+qFNJIOXrTR4tBnsIXoapovwcOmscvn95KDaixd/DANKOKiMdzClw94cZfONun
	 cRMt+5mjdHM6h6RPJjZ2qLl2SAJXlQh7cMB1HsbUrRFMv3l/DERwuDrjkJq7MTpXCj
	 jLXVf+Ai0t7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA80EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815478875.5187.15644027082090368726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25a71a72f29e8c94d77f81d0da8bcdf32ec2f63f28ef229ebe2747f671e7146
Date: Fri, 30 Jun 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688154788
