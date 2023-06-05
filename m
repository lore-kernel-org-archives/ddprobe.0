Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7ED160
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50CBC433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685923745;
	bh=qMGjnL74G058XcHyDBWM5ZlKtoB1VOf/uE5SsysUJJw=;
	h=To:Subject:From:Date:From;
	b=bD4qbE6Qu9glF1XvayPAc9l9RtHBFTniqQ4LVVciLzcllOD0EXV7FRqU1Q4p+yXRm
	 NootcrbYPQvCV8L2aSVzGgkWQiUqVWcDuvcpBn/EwTg5VwoNCFii1x2/HLw07MQdNb
	 hNz4dMFwvWdSRtEuphERf6rohsIIIBAki5hPKYSKm5ZklwpR6paKiaJmD5/cW3plCs
	 9HZBfko4C9X7TacVKC5HmzKrjBAhPB/4tVzKbAPmQVf37l1mFZQsQvUzF39Bc5v8HM
	 ty2e4Nm5GOI39ONnHwBxy2e6hJ+ke+2AbjU17FWmOFEGBXPSzzB4+hn2fcfVf14xjh
	 6UtzUK/7/Clcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79F9C7EE29
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168592374574.1405.7510095105635663777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924cf234baaa3916876562ec2605b09fda2207d5883fe709161cbe038d07a20a
Date: Mon, 05 Jun 2023 00:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685923745
