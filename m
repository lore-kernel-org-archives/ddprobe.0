Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D467333DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDBAC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663077653;
	bh=e4VUaP3Tc2NjkaftBKLqwAzLAZ5CbvI2vGBDgVo56WY=;
	h=To:Subject:From:Date:From;
	b=h2OMBjTbDAwhqSBlHJCTHecv/t/H+M6isN1zIKAKVBupxMrWqNmzzKH+jdWyzUo8o
	 xDLDONP1py5GtKB4RbmS8oeF7WcNrumr0zf+mDW80po00rwA5T1rfs3OG7q0S8VOf5
	 y2z3hKo5clCAFf8xdYR6ZIv0IyF4dH49mX4a1sIATMhvOd4zv6kUtE8E4HHwwXFBYY
	 K8omXv3oRDcjUsn+ASJShZkSd3iEE24dWmb3sPFICoH0Lu5kmizQ4XygaoNGGeuud3
	 PsDYQOj8QUUohevZC8OQQHrscp1ViAbA4A4OUmOXpz3NgNyP17a+Pba+gtit0uXP/I
	 cljj6nLsYF0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEF3C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307765336.2468.12771626074438961682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87464c7ed77b4df96714933bcc11a1d0a0dfe8513525a5e2ef19898bc09d020d
Date: Tue, 13 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663077653
