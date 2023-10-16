Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4098482
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEm5udSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7B7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697449628;
	bh=5MVYW5WUptdUCSHEBEIiH0Tvb1Be9I+MmpXs3C3rWoM=;
	h=To:Subject:From:Date:From;
	b=QEm5udSBKXo5UfE0x7d8DoUwK8IAP0b6EcCw2Yd8aOaK458+J3bEonaKVPpGRcb0H
	 PalWMGe7ZnJZdvnpELmPXPnVlRqKhRYpVIeOrYMCZ16FhnKwRul3/kMC5fS8c/9qZy
	 OpuDGxwFxrDutsbkUQWhnY1v8aFuLtnFcea99NMcrpefhS46XvmiqqnHHgW0qpzUU+
	 jC1g0gqlNQSZIeauKij7UeZc67m4LfJJaDLvCdeRZo+mOyvb8YeEmTZf2wQto6gZhy
	 1Ax+XSKf/gTkQNIdWxK4pdmE0pFvAGZNoxFo4JpyAD3a3zMIFRVchyucZeiVO1tAuX
	 ikyxd6g2kYgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61ACDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169744962870.27399.6429374407283049620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06e295f3124da13ff4ba7fa60f0bd793045fc9a84d7084ba2337ff10f58bf99
Date: Mon, 16 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697449628
