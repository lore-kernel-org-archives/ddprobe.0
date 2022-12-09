Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93822F3D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826CBC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670598687;
	bh=Yc7u/ifXZEGy8SVTr9R6aqSxqxM58VbWsvgbPGtZNZg=;
	h=To:Subject:From:Date:From;
	b=H2OXYWTfx14FVWcW8/gebFtrZYDOsg5tpSg7JSJk1xmPKag8gRrwNog4z0+gB8ByB
	 euX4mB2Jc7Q9vq+7IsgX8G6Ea9kwEgjJ7EpIxeIJonxcBXAX8SVQ/UAhcQ2wsSnSxs
	 JhoOsTpSuisteEpfJ+h4CTf0XoEv22/RZ/u7tAtBzOjS7bWTvuuBNumD1sHxwEkbtI
	 rchgOeXSOCXvIDjsSf9/ov/Yb4rGk1soCh4nCz+11c5AiA3b+8yijZQAAjIwK6uL6W
	 +dcXZ/3IYRyRr3xB6dPtUivtex7Jyx2hIbB+Hrs46Y/UZEImN5F77WZiayXTxLJ3Z8
	 z6H/058iWLbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A55DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059868742.29936.15104835007090313691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d858b3fbfff54f3b4c25edd76ef175759dadf8fdd2063c5d7a90fb24716573
Date: Fri, 09 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670598687
