Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44559BA4F
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C9A2C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678216206;
	bh=MggF15DEOnASwhaOcAAm4xFj4mcxmHKyiqUomocGGW8=;
	h=To:Subject:From:Date:From;
	b=Fc+njmwxRsd7rxt8TERb9cKDPLeWM5AzZ90ZLKELfDxzfBtptIR7gvqEkq/bQnBxN
	 5Jw+vb6TxwNdsbakpazzEurupzJqPDJOME1mOx+FJ+9SfMuH3CrR/v4znzC60Q0JY0
	 tMe+wgp+xTfjrLTyV9GBTgi9oV1WAErZrk66Ng4Y/jGMn9FQc91oGockoORRoAhvnB
	 X6KtwA5pRVfmUJkxbUx2Ve8jE5qu3CsmzfTW2ULN9GUOMf5W8T3uJv9CWMGiUSadye
	 KjI74Chi0AVRAV4kxKRbThQbhoOWq6PFl5mTJ/cZtIrr0/jHnQSGvEksBUi0pcSKrA
	 dGoWUV6ucOQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E25B4C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167821620591.24692.5786491284924121412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93da4986f8b1c697a3e2be01d548d04d548efe02df338a7ff87ffe61e4a2f0b2
Date: Tue, 07 Mar 2023 19:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678216205
