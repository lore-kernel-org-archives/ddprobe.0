Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5EC256C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720E2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663620653;
	bh=1UmIuLgzIfHJUbQHOToA84cBhP10ZGT2n5cHTWNQ2bs=;
	h=To:Subject:From:Date:From;
	b=dsh/VgQsGtILDLkDyLcq7ZrSBlPJXSK3wZP5y6y+8VXW9VkGchoUfmyGlxsljTqwT
	 5p/6VUjKClGgfK8DD92W4nPOoaFXSPBSuczdDzf7h5X2U15MyoSOrY/BX9kG+NzhS5
	 K1+5oFCu5eDWcVSqzMB4Srcjx5vbHXoKsOMpv81FOzqkoqOhNp91mw5YanQokJE9ae
	 aB2hJlo6B7CefToMCAGpoETduYkA3wu66cpLW1nBL5DDmkl90MLeE/t2nvqyjP4Jw5
	 /XrqdU9oL397YmNA3EQykyrISGMuQJQqUlVnfV19+5WawYSIaJ1rkscXc03K8DLorr
	 mQW8XsQ5v4HOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58631ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362065335.21535.8450477807374980573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74142fd636c61c9ef75d6f7c03a0cf8aa83bd049e2421a7ee645f8c42cc91ce0
Date: Mon, 19 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663620653
