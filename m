Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F82C2CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C9BC433CD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686750428;
	bh=Sz0fhxgssu5v/ejnG5b+AqnRYkyqaGzy+jpMsyvSPhM=;
	h=To:Subject:From:Date:From;
	b=ExON7N36YlN14J6HRS6MuKOxWD/46mVeAcP+1hPmXEeayOJgi5YsPTI2eyk8P+o4c
	 43+9/tVBL9Gq7oBfEz6ANAnPUZvo4/DYbzVm4KkUZqsvUcS8m6blhm28Fry3YSCHuP
	 PoH/M1+KdI+VVjTDC3HWo65ktobrz0W4ArcPhNDJraX6LNCSyRo8+RJq5z7bYLHGWm
	 NThns4FCx5jZ8SPFAKK4UUNsGbMvaS1K+0OJdm/2f4WMv2mqTPGS5SHTHVVHIOfHW+
	 J3/xieAXmGSiIunChgbyscsdyA5O34H9R3ezuvRPuB4CMUv08oE/50vTTvx234TE9E
	 yJvNdXkdiX7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA351EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675042868.27174.8749695780169119067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812d03736aa75a97ff10f29c021d517141c0c87e28d045f77e5e4de5fe0a91c5
Date: Wed, 14 Jun 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686750428
