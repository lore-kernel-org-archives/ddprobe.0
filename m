Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134D9625
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772980494; cv=none; b=X8Qato09VDx4XVnaP9eTFb7a1D2rU4kzcqYqHTCAsFkanmWtPBYB3bi5Ackw+zBCtkzWyCIz6LfG5KhcvXiQbGXR22po6UAostx/Z0Y8ozgksGpxvxR3D1Tvjwu6dWmeCUbgd+LNaVjc7h2MsK/HcW/sAA5aVGFgAuU94iIfNP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772980494; c=relaxed/simple;
	bh=nA70VHgNMGmwoe6rBgrmluwdhS05pg4fhpkdtRrBgQs=;
	h=To:Subject:From:Message-Id:Date; b=ng6Y/OyOtFPAi0WKb7cy/3oY6FFuxQ+nTkX+yYUFcjqR2TtmpOmnOqGyQL/MiCdRjotbFmhM4lD/Ctu/YbtpIYr/T5kBBdAtWl/ncPjhBqNb+jOQ5Xys+PoK9XcchkIyrlxnUO2uyQ9BVoA/F/wETdtSi7IysjilDQMwMTmyWZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3biCoFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3biCoFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772980493;
	bh=nA70VHgNMGmwoe6rBgrmluwdhS05pg4fhpkdtRrBgQs=;
	h=To:Subject:From:Date:From;
	b=Z3biCoFkTmWdZ2OnRMck9zHqwJV55T53ulHNwVBIBjkGazBY5+ryrWJoo4ZvH1oaN
	 nl2BzRkaFIfsRx/mI3zILys82g1lvnzIpaKAVl+cbbh/R7WV3Kzwuu2YVKsYqjNUKO
	 Xvt/o7U/uaGD+sMSGmTdBAaHabItq8OILqrlzkb2R0cw0rMRLngmGqNjUhZ8rlMVer
	 CEhFDGQBpdXq0+8mBw3WvN5A3Nby5xBobflxrUR/Y1T5m7xoR3pPPDQKSeXc/y7eAw
	 LHJ+qrEh2Jm5jlypi2MMV9nb6TjHyVmGooVMTiI/TY5O706KXzlKbyjI0Pn+GoEZUP
	 hc50mT6M5026A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252AFCB63F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298049357.24447.14501308966193400328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9761c40ed90c45a236615e9f4945cc0b51deab62f394be886071f7d38eedacf
Date: Sun, 08 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772980493
