Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52631A950
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CA3C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679589545;
	bh=/8VmH1jwZD+RhExXRp0BZI3nhtk9X7YYFzHIWkgw7zA=;
	h=To:Subject:From:Date:From;
	b=rkNu3vtD8bpMOoXIOPvnAJIaT2wi/UmORdz1dp9S3s6n8z4VdX70OGrIPdK36WI7Y
	 xZFU8KXQB2ojBbGYkFACwBG09dCHYDAe47Yf+OnheLMxN3mPvB/0P0TClqsHjvDG0w
	 SpeFLUt25OnpWtFMVSlIgVxcfE4yipmdzv+wqw94BPJACZ5IJYDMp6fr+bRcVojcKH
	 HINi4pL9A3ekF59yWkvktMySME77NK3LHCuxVPvJ261ZZae5pioHjXVUK616+mDj/j
	 Ehaxnau93V+8/n8boQsBpG3TEWCrasql+S848XWZdCMSW1ulQ+6PkuZQLQME9G6Ujm
	 OD9YSV7ejYpsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE985C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167958954576.4350.15398386278091934402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dda3ee469c6943aa98362062b3d83949a4d9452ccf6a02f005e43d13a6ea49
Date: Thu, 23 Mar 2023 16:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679589545
