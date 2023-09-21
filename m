Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B71A18C3B
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46EEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695328508;
	bh=eLIyaoNdZPbkKScMzDpNLBb0m12jtqKbjKIQOG90BEQ=;
	h=To:Subject:From:Date:From;
	b=UpiTDGBjAxspWzmJk0jGaqfSDzBQvJvmUYollMwcYciizt24gI9ZT6bzK2i5G7pkQ
	 kY74+dsAuLQzSIsak1u1eh5RQ+q30BY1okuORbppKh5CHBnlwts93xjs0AZV8KYqDx
	 Aik8dh7E7SRz01dmXDg07kajBCUkaOPlLEX0e80Kh+4pi8QMREg1u4Pxs/x4Bb9ehG
	 jOsvs2RVwrYdfIlqyZtWousNd3jr80/XIy/d7McJxOGZ77L6a8V3WbcOv/kltZAnai
	 o7Xes5iwm0L4JrC/ESKLFL1LZJtEiqDUTX9cAZoJIg7Wu+ZT79+zOQ6n59GWGKodZs
	 wnEZvL1DUqobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EFCE7D0A2
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169532850867.15487.16712780843344486888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78699bdaf66aa1b5a55c63354068860a4665d0b872b52652c87e5c674adb8eee
Date: Thu, 21 Sep 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695328508
