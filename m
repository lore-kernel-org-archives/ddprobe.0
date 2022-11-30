Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFF47E0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6DFC433D7
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669771254;
	bh=fvsWbTCboV3nqm4WKvF7s8AKGJ6YBEjIiXMf54AcHo8=;
	h=To:Subject:From:Date:From;
	b=KQDVSV6znhUzjxBgn5fVVcBPXjbquO03AjCs/9X9hFo4pUPgusJ4YbreBLIENNGgS
	 pjMSkgrLUJ0YBxuIN15X9lCyv2r6dFeqAxzueMZiFSJpOgj0F5lAd/5BLJenWX+8iX
	 asObwGuKoN+Jo51WJjm79P8bx7GA6DVVJsKrFPbYza8HQnf7vN+AXxy/hvksRjM0tH
	 TNZNIg7RuxrbY7PVZwnJ7YewEj8n91bef8sjvsu5kY64dEMsuj5IHQz3JyxItp7Vve
	 99Ln2Pyh6+jBVCCj0MQjK26b62cUBut/MaO/Xe2PpjfzEJos8HRv2W7Zgp4Mch3Ksa
	 lIgLJVIaAyqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5317FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977125433.8972.6448074861437190588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad642f7b60521817b5720ffc918712a35ebb012cc00ff649e9a428aa6b7ac023
Date: Wed, 30 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669771254
