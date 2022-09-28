Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE528ED5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66ED4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664370053;
	bh=vUNLnXt+UGoJEPwc3PrIVloHKYiBtE387KIAye8/OzA=;
	h=To:Subject:From:Date:From;
	b=XsMuj1s+sYuctbFFjHxhtTj9Sxc1+wH1erpNI69BbwixnYfa7UJXnX0YsrABoBmDE
	 L0dN9NBnuKz8YweruDvpvqY+R3G1aHiCqMVCPKPbjgswKHlopvLM6E6IoKhW7wpSJL
	 wszEZl4lD+HuR2nxPFfZpWvX204nJFWXsWTydrRY2IM2qXrz2ovvHRuTtLNHTKsFRp
	 +F0SHBHgE7Nu8NZOJ3n54MSKgzk8L7/UTu9om23CGJLSYPnAH851/lhCv7/38ri35W
	 Y3iAQSWu/7MEkkNFXzMUUZ2jlyHBlLivl9i+axiiXCXFXWAgB/9Ts40y3yRd/edm/j
	 U2egKUtw9QD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505C8C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437005332.4429.5023244770580631461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb80c8f419e258584feb384667c3836404afa92f67d6f90c26d7afaea11a2c9
Date: Wed, 28 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664370053
