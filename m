Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C063C1102
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3CFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661397052;
	bh=BQyJGVzk+IbroJ0DZMb9FLyYEzFnyyJldm3rpdqZ/Eg=;
	h=To:Subject:From:Date:From;
	b=AIosgsWmE+13aYF6Uku9vVmvLaJD58Sy8KfBn3OoyA8bkBrBDP3FNzjRh0Lj+uV9/
	 mUHBH2dDx0/ttBWhE9tQ+TMQ5cQSar4ngSQ/sM3936l+jQ4h2cTfsguMazYWm/SE+Z
	 TX+N1I/cwhsQSdEyIlq4H48Zbky/VlETTSEegQVJiE/YzIbif1BEfvy7g1UeHuAeEh
	 /nkZWn87TXR98mTH6wOaUtkqE/CwbfZawIxpRsSF12QhpgmVH2I5Bz5ebcaRHqnvsB
	 xtB9vkq/ZyZToPvfNhqLB3S3ebZHMTdjM+ySA53Wc/TzpM8tWVQ4o7zRthQ6PcaNuY
	 Vp27FNBk94a5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529BDC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139705233.14538.11572940880336535220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b277f734642aaf0f69ac7a5b9278441762f2bdf0406cd36c0de098a3bedb340c
Date: Thu, 25 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661397052
