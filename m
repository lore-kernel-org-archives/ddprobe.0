Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B006DA40
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68549C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664349053;
	bh=DSK+yrwz0fLaTvg+grlVtBltvJtifkyeMN3luKKHusI=;
	h=To:Subject:From:Date:From;
	b=OFJYPZnCoOSHVgKzRRBKhkZFEbdFynni7veVG8s+xxi2ZdPeLzZFT4UJDtEMMpqyW
	 l639ECXI4FDI53QbizZEDEIDnGl1iJ6nrsLifBRynfL8RTZfBanmFqdsBqo12JzDRi
	 a5nYTKPnS5p2JrVjBdaips3HnzMBKeIqglQcp+QeuXlrJIFZ75634QqPXxATvk9TtM
	 gGP9MFLPTRbNw732FKX9XJcIhzGVBG+WrhlQt4Zy+9v9w+bBEvRXWb9dakVOCTZTzP
	 fDlr/UDD0if1t7lwBGzHA3wati5VTRHQdMW6gPyzOz83GW/CD2thTc/bycxtA7ZwBf
	 ZAgCmwIQ0OTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D4BC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434905332.18297.14024224067112550302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbd527dfec47c3a98ab378c5585ccf221fb936e54df6bd536e379eb079629f8
Date: Wed, 28 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664349053
