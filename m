Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFD22F39
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 899A7C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670198454;
	bh=dRX/M9QA4YRc/efwTgNzUSMPtBYvsZj5qRWVsUIOD0I=;
	h=To:Subject:From:Date:From;
	b=jokDk7JwOeE0Ue7UOFCdCEUlYtJEyd5LuUxdkw6eRU8znDga/00n32utDP3pkIP4Y
	 zKBWXSdJtw1quBU4Zravvx9piT7Y/i/zSgAFPnKVm6xbtVbC48NjLdDzoul2NhldLp
	 UHJQvS3me8qXwFYOFJ6YGjC4LVsUHHa1AaifL2g/e1B7Lwzb4IxUaN6ZDV/thwm8hv
	 KQwlA0zA1azD4v8FysSaTVp/APXnpEeHjlev8CRtCRdRVGhqB0PcZF3tocbvVx/tF+
	 1sPyZsca4oADuq9BAtIzaHZTSkHvQPI/v2pSWtEAH3qPDZYz1FBL/GzCiCeAifW9ZF
	 PC7d/U/tj8Rww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72666C4708D
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019845446.14459.2116439035324427763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c91e49abb7bb1397b400bec79b30d585ba95a29a41dddbd7f83825121e98b5
Date: Mon, 05 Dec 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670198454
