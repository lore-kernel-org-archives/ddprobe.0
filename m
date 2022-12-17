Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFD97F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9C8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671270687;
	bh=Az647bDwW7Ezx/MbCT2+aclmNptogfcJrhK0JlvrLos=;
	h=To:Subject:From:Date:From;
	b=Qc2pHMAz8EQTdz4oFIWUB5FMRR0ucxr7h7ITyDVmH4h535701mGzRs8AEavyi48su
	 Wva7BWEASLvO661g+yaeZMipgWlEhf2MGhLCha6hwL6OWFfnGF6A8VmafBpdgWbl1y
	 ss2hpZ8vSFdwkn9gTvrnkSiARB5YVE1nZw4BlvjPgbIKdZzlUs9UGzzVEQfBhrPngk
	 Hmp2BvZyG4LnaFbPXU32hpqsV3Y98sh6eYFEbpTSZFUEit+2pul4zTMkzdzAZv5Ijj
	 aduHhqk2TwOmk6gbU9Da3ddYSf7/RvvO7jnMlci1W1bHXCBT68ZOiYrah0tzcWk/uY
	 GBmrFsturOMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64531C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127068740.20111.8424956097610359656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1266b6bd8b021d9158e060c9eff94ef9dfb640fea9ff03962faca0847f638bdd
Date: Sat, 17 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671270687
