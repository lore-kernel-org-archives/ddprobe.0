Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2A610E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC21C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662817853;
	bh=ZdNhA9JeOLZakD2QawN6stB8SfPZYcoNGy4c9DD2sWA=;
	h=To:Subject:From:Date:From;
	b=Z2Z+Z13uVTg6oZpRhD6hVu45EHXUDrS7OsvgTtlqqn0s+HivWIpoldJ6p8vQVqSoN
	 /3GvsKPpneukvwHzdJZi0F/4TFuX9jWrxDQb6qomRJWHscOlvA3UEsY2BSUwQFr8Z0
	 JAya1mBKG9CTufkjkjIAOCABBydZDjc6cZzajIgcuD1rOWPPcimn31ysD3MhbsLI8n
	 qaFwtMGuOcYZrBPrWuW7efc1qcXWuPx1hXJJi3yTP5Fz5N5pDl6Uf98PDf9giqsmHn
	 qfVm3zNJUj0PDWYGD1rz1wHeZ325YezSgOgXmAwfNBta/u5bMQE01tU61Djs+w381+
	 uMS8EDGxTTlag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E3DECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281785331.25635.15944298294422203038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe14bb637e52fdc2cb3e8121b12f7ff918487b7c028dbb8379dbb47b8213864
Date: Sat, 10 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662817853
