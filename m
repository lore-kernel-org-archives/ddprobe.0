Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502002564
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6FDC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681889645;
	bh=2eNQugvmq63JiBdPqU4ni7OkpMxdFMNQhtQCaMkehMM=;
	h=To:Subject:From:Date:From;
	b=FvDqBysLDkA8LGMLGMxyvSOJLtu5RBRqzoWwNQqUiYY9aNQ5pSunVnYlPR2X/bXh/
	 YHn/Mbo/Q0GLDMUBxp1GUZ5CZ6WKEhWVKGyxib8AK1JvJ6pBRSDhNSe/2M07nr+B0v
	 CQ+YI0aLqQpaM1EC3o9byKMYdvjyD69pCeWHn7vkgDNWAtsylvdVFUS/dIPC6RTxlr
	 Tk2sxOeqgquwRmL0sKmgUR6Onw/goHHy7sDVIo5n8CqdyPPAGwLvlo9Dc4pL8eXYgA
	 QAsHo17ax+qJAuSzpTGdd8wodee4oq+wMRp+dkIh6ZFHz08J3Gv+WvAN9EMWd2su6L
	 Pj7d6o9CLmMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC903C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188964574.5474.16846926184072615598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c659dec9fe2afbe686c789aa4307b7b57de9b76c05f62463731ceccdef2cd0
Date: Wed, 19 Apr 2023 07:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681889645
