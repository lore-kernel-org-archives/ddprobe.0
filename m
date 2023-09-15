Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470401B26D
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5492C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694808908;
	bh=EKxw131BeXzIQbyxQvLU/Ix+8dqFbxHaZONXNPUrHUg=;
	h=To:Subject:From:Date:From;
	b=Sgx2RQ8O5yjxgMwkinErnWyFt5+VDnPY3BISsRMufw4LI5SVJQI/GJ9mO/Avjb/Ln
	 41hTTmjCblD4RvewRpDWskt/ijRUSZFasyR25n8QXwNUC+g0rBr8tFnqmss2Jp2x/f
	 tX5azxaUd1yaYvW96LS/fW8CNKpQF3NL7nL/VD+XBWujnTjxwcBo+BgzDFfGKO3WR0
	 syqXSgYCb7HSaxs8BQg2kc0Hs8T1Cy1vtAM9pKcU9ldvuEu9z7bhz/Mc/B5Z3WclUi
	 wDyZ5LoRzRLhLYrvIsFWZBkaQvrTrKVm3DBDXbjBQihUPDug5Ky7ibtv3BMdXKMGrm
	 AIu3cytiuSCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62F2CD37A9
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169480890873.18061.6688805163089431465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a96d9477c60fc5177ecf6854abbe5290e27409bb570013dae941c9026cd329f
Date: Fri, 15 Sep 2023 20:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694808908
