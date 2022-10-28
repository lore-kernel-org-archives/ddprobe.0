Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B491028E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66D0DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666970454;
	bh=PJ9KcEJcbqZkg0+hGXcaxsiShybqe2oYkR+Ft1NX91Y=;
	h=To:Subject:From:Date:From;
	b=UnBYoN8x1x1X2jWjBVcgvHC6x9WT3UYJmLAe36d5ame02cuu7KPiKeEbwAVCvVYSU
	 yBWfLUmNm+lUOSg5gT6/jPmnEdAXAVUTBL6EbfB6doyVY61tem41ujp2AtEGe4mBYn
	 xfAdY7Fq7p3J8Ec8l/4i5AryUHOSwLDedztO38HTMOKTvcB2d7xJH7LHM5uPMwFx4M
	 0tyl93eJHYUArisgSQy9/Xa3odeloNG3zGBW3HNjEFLTJ0/SS4+pD2fkgEqUMpHSYj
	 R/7/JUWL1CPHljN0rPe60IvOiKJmhllhSEDiEzoiqEUSzkzACMyTJpO8oDSR8sZrrn
	 U5tBbJ379ra9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D61C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697045432.1404.6692588098418898138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287552c002d5b2e23df50cca3710acbbbedca2bfc4981e5fddf1ac3184d8bd67
Date: Fri, 28 Oct 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666970454
