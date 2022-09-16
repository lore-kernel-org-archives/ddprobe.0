Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14442105
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEB3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663371653;
	bh=h+Vbf2+eUA5Lr0J37sgaVVn3z8QVpB4MDHEMWxnQA8k=;
	h=To:Subject:From:Date:From;
	b=EtsC8gMltl5T7zfzeFuqASIoGN/HB0x4e1bt2c3LW8yRyKh+qaga3RMOV7KEgvBR6
	 yVFMMa2VWuKUiV806KoAMtEwvaiPh6Bc2aO3T1J2SnaEpKGbKtLmGXrIpxVUszD1Si
	 DcrrRYo0a+wytaIGwJbsY0P3XvqKZyL81G+DW8gqD1OY0W6Fk44JijDC57k5WTpcxB
	 oJE80gegwzE3yTBkLXazYRFPJ8N5c91YTo6LZWWeYC+9cIms/BXAoX70tr+nAm5evJ
	 nAUan8x6EILYfGKWFfOWFq/wbHmn+odmoSkMRGNmt0XF6SQNQwUxbj6wvtirsYK2wu
	 AmLhdwD3HlKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A983ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337165333.9568.2758968388476146773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0542cd5b50bfded0efd7bab9841dccfcb9f31a50bf2c0d4d002c3d88d431ee41
Date: Fri, 16 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663371653
