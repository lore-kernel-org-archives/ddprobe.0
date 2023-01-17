Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E833222
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959AFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673994687;
	bh=qCY0fj2T+qdXJ/gpmjJQAB+DIMT1Z4avJLcjfCO8rJE=;
	h=To:Subject:From:Date:From;
	b=Rr9kRLTjl2zI4FZsl8nBtIwDN8v3tGaeGA3eShWDXeFogC9ivLXWPHoWxR/OwWlM8
	 M7z49bV0EyXOS5X47FwMiCwYeqFSeMiwirj9P+e351TvV9YFNW3dAGkRawZj0H8flo
	 TPD91GSqoSrCRlrQO19tmPS5BlY02S8BcdMKUPQym09PkWrT4u8yYEZXVKPmICCR+C
	 lrDWXYAs+yuccoAtJ8r7d7hqZc1wfF1FzVqjikGnmnAV/8jOcBTO73bpPA4GS6O1Do
	 IldHA7vUVQDxCQrYXk73AUI7zKpZCF1L2l4SUHl2fTCYWghtv0gNsr+dA3l5LuvFav
	 iBiaNrWcZ+H1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D778C00A5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399468743.27238.14167242326570516122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df21944db68cfe5f049344b6554fa2b7f0f7439d9081064895b2cd01d181c94
Date: Tue, 17 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673994687
