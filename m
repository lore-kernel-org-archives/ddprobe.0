Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F90185B
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC59BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680236466;
	bh=bKXAWneerJIq9imCpxZfjPoTN7RtBlkx6ncu1Tal9HA=;
	h=To:Subject:From:Date:From;
	b=pRW+QaGkTvpw+x/CrKqtX+Q8Wbk3lzmdWKa50rghQayw1W4k3LiYuH6MLv3cTV3M7
	 iUNsyJcwOZIZvvNV3dUJXfLAjES8DuTSM0J+v2RdL9lV6spujKvOuZnc8vgjKETzd5
	 8obJFQJQ77/5SxxrsZrE5JGvuCWBetod9EBpJr5GlagGE+lPxCnQj7XJO9YwhyNhR5
	 lpmMsE0fTSR32P/1QL0Pf18NjSD892GH8I+YSxb7LvF21HKClANUmxATVDpwSKvqKD
	 xOkz5MHBKUBP0G+Q9ulGXXmVgNbgwYkpO3mMY7/ZQI+FN/ar1PVpeNsRKBLcElo+7q
	 mbrutL3mrQYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7B0C77B6D
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168023646581.4153.10325820888466337455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca96032c78a7cd94c3e222bd01c4fbc19cabd2783e578f674ec3b22a466a3bb
Date: Fri, 31 Mar 2023 04:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680236465
