Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CA07E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72F0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683077225;
	bh=j83f4NxNPiQ2Q4q484wHE7pIownKgwXynwjQvVqtGMc=;
	h=To:Subject:From:Date:From;
	b=PwVmQ3ABcuRRlnIYa+hbkkgiEB9ezhVvkU9T5jvrUqRdsr+CZJxVlESkEHKgoq8Wt
	 iyLHgAiQ7LCaH0VrpSKjWDC43c7yWBwLdv5pEWxS+RAJYbaM7LDsZ2pPoLv8TZjn0Z
	 JPGZ7ZciDG+7oPSBPPjdvaTe/lxZTwgpqj2TY1JZ0Sj9zNWLyy3nHCeKVilkYFXPUB
	 BY6UMMAxyxwJH8V+AeoAfp3F+NwY59O/XJistxfAlLNkUGTLrG5GL85TlsUh15Yx5c
	 AENcTNbmUY8yJAZ26B8/64vM2QoiXLYvEmh7s9aHZeDUnKLTO/hFwoAEEnZffU5CLX
	 hrrv4FJ7pviYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0B7C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168307722576.27228.16484175121097374054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cb60c92c0c0e04b0950f6f6944e05e638743dad481fdccd7485139b7fb341d
Date: Wed, 03 May 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683077225
