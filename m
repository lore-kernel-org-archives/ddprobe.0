Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813820EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 05:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC059C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683609665;
	bh=eaEzEeVEimuF7B1jsxJukawrhdktkaMiDDdMxwuL3HA=;
	h=To:Subject:From:Date:From;
	b=fiOs7aD8FqyK119mT0qpgV8dAkZpMaQYB/JDO12L5LGylyJfTBc2MWQdP9GHJoJBB
	 lF6983pNGvubIsfrT8oJJdb3jZkru94HEzdlJqHyRTxK4Mtrvwld8/KYw4F7vRQZVU
	 973BpWLjJyzGZikiCVMPo05qIeoMABDgnmQ8NN0vrjyQ+Jdv3B4MgEYPMNIVHZ4o1S
	 DlbhwmcWlFENJOCTFLRSeGsCNzEqGyatDrBvvlHXNQw9av69Q9qP6pz3jez0gF4gSj
	 Z1mx+eDTsNSaPwI84xlL8reazizhYKeHg7VYBlGOJMK0OZDJRMjJ9YXPBXpGz1tY3P
	 /XiyBUJMylZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6F4C77B75
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 05:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168360966576.4771.17563893171007191017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d406df9cfecfc1954b33c143b7bb87c5908a88f169fe81f0b3b8fedadcb1c8fb
Date: Tue, 09 May 2023 05:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683609665
