Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B6A20FA
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2DEC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670407854;
	bh=m5DyZcicfBQPwa+hyQuoVmdXRCsZqErq9FLrbNOtTcY=;
	h=To:Subject:From:Date:From;
	b=BFL3m/pJbp0Y+T8ftocqTwWta8bIZo/IG36XqDaox4T6HbYYYsazrsu5mb75lVO2X
	 SGqZZZTOEzoab4mDMAsPy0fRKp1n1Jpy4urQQP0FNBMfaHKobAfJKIfqtbllE+h71s
	 4kqJlxC8knFl+7YSNMjgpHqQJo3QFWuw/gB25l3cZ+t67O0ij/+wmZ7RmLL71PkkFK
	 yRGqnvdrPR3uI/e0Wrv8LQxUngqZM3ZkEjQJ4Qhvn1rhtSu94XeV4U04mZE9HnWi1K
	 ZflqlmE8NZFJXylK4O9z2JsWWtgdSkfuP7A13nQEXlyToZX7LZoMdzw5vnW+yEIP8i
	 oW2f1dVkovVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9D2C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040785431.21194.18237956503974929334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26741292b9876ed436fcfb3f0eecce3bcbca0f753cd9a06b2d8b13352fd03f71
Date: Wed, 07 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670407854
