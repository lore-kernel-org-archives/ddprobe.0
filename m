Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510C579D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB07EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675891866;
	bh=NA3+7Ms9p2FLuvbE1db1C/3/Wu6LE+7mi9TS5DlbHjw=;
	h=To:Subject:From:Date:From;
	b=VzW4l3ATKWEsMWzjtt1PuBZqt59wD9f4Cku67ZV7AI9nvWMnanUYYcI9LJ17qICGi
	 oEd/yW2Xz/srj+HDzoUGseTVaQqrTfvnR0ZCVP7XSqyiGAx8987P18UwY0zw3oGEgf
	 iMTlUT/hgmCK8xzchpaWq0tBCtewbRDEDYvxpxrMcqX/D8HrCh/IfGJCAqwr0d+Pyo
	 qEHngufuTLMdmS2RTHHyOdylB1hu5Hrxm6oMLfLxDfEVH/FOgog1iPftsdXuKqfb1q
	 bv07BKqGPncFTc7eNEtYTski7I5ey+pZIvo+SEnjLY3VTLXxDjhijoQHZ2OSm6WqN7
	 hr48o/Z/Snivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B9EC05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167589186579.28932.5318941791011765665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b7e00b448f69e031c77ffcfab0a3e6262588937e172a4932737369662358e7
Date: Wed, 08 Feb 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675891865
