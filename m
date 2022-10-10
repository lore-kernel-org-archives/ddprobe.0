Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBB77E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B3EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665363653;
	bh=vZeMeUY9D0nNd0tVo+GYv9TNwoxryYhUlMplTtO2lbw=;
	h=To:Subject:From:Date:From;
	b=Hkni7Hjkd3k/hQB493u4l5ZPJWzOnaqZYoENDukD8nAATtjVeKOsTyJpvvI9wCmqs
	 g23+d8PzWjomCTJGFEptkQxD9psX7yItW5VonSVDZ91M948D74Fcr4c+mRNnsLDzK2
	 jj3/xLq4pde331u/V2Zic/yw0KfIe0Pcdqs3ESfgLyL/bQ2aH6suDPBIlObXQpJAgM
	 +QyFrtFUvpm5sejLPMcE/AVkx8HCSRqup4SvnODn++izt4br23vPsDPUFHoaInxU+G
	 ZZUIJ//IphHw8FoRqyO6AC6499WPN4n/d4PGKev9nCo2aPYCuIAj9iVngDFS/zz4WS
	 Mpr9T5OjdWaig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549ECC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536365332.12462.11160699315391480185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bc630d62d584a10771e14d5846738c01bb147aae367497d186c635dbe84f1e
Date: Mon, 10 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665363653
