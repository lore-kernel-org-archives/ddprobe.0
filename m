Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA83256E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1801C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674256925;
	bh=Wuz66Hc+ONmieSqH17MF6a9tKb47b0S6jJIcmvCzVZg=;
	h=To:Subject:From:Date:From;
	b=Xof7QMCqh1Yx2tLAXoOQwDlbSRJfpu8tNPnSoRmpXClr7HrBnZckYdWLbUrcTkpT5
	 I1IeWbezI0AGk8yrdx56fg9HRqGN3ptJjEcU+U83DhHrtmNWmEhVbcMdNgg1B4zY6N
	 dQ7JeDBgTc0bkjQLcSHVAwmjnBkGM+VGg1y1Cr4tzJb7jPfW9zByhZE45/Yb2pipAH
	 KVCT3ftqqh6qRZUp3A6gTuHTUgGpMXl9wI+okrjJ1NCojNJqNb6CnRh/ZpnhfeTdPb
	 833x8HeWTP5AH7k4mdJUIm3Qkb4s5Ekng1Fu6wdLJND+w+/DruBCk53gl0+FFR5q3h
	 5XnpSK2pLw0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7780C25B50
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425692581.10496.55650290139414332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c001e4bc462b619a67ee235dbd3fbd248725776f48ea321aa0dfb6be8357e2
Date: Fri, 20 Jan 2023 23:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674256925
