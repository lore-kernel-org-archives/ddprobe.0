Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C345396
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E14C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689310268;
	bh=kjQYoV8UXaqvoxxefeq9sk+NtifAOnnAIxmrSvankwI=;
	h=To:Subject:From:Date:From;
	b=smpIsTGROqHlIXJ4GhVOuMTAJ83Pag0enrHAbiia2cjDUs55aT7FWgcsH4paG+W5A
	 serBqF8WoyqrX2JKV40XbxWTYs6/N9F7WYVbrGtnObZd2Dp2do76pzk08vV5Ole7z7
	 BQd0tjkMDb9fmgHapW0Oo+nlqZZQzsqCJQJWXOCRPWqV0/H02hc78u1b9sWpTGC1l1
	 u8auI/oR6lXeD2+qHIf3tWkpEWj4IBMUZTh+NisbjCJi+sjZAO4fT9Z/3omWaW2kVC
	 I42/6KvRSAaKolKXv3DJfouHZj7T7mC2lsKOAcdyACVU5NU6U+/lGCTcd4vv5EX/Uw
	 IRpYPtcB5tNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E4BEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931026868.14187.15851802035409792307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1219b47a989b58d1d791fe30dce92f9a4051f155c485771635ec865577aa009
Date: Fri, 14 Jul 2023 04:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689310268
