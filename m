Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A2264C
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6603FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661928053;
	bh=BkNfiqFBz3p7VJgDGXAZT/7Hsf1ijGJ5X+kjTf0PwjU=;
	h=To:Subject:From:Date:From;
	b=rhpi2M3szkQfsxe5aU1inPLYqLLrtiw+76N1mCVGCmMHujM4KkVYSX/bFDenbg3+e
	 9E6HkvHp0wMWzVJCN3pzt9DdB4IHx/9N4c25gxCRxqoFidDEPVGyaD/rsbnRUMaCqa
	 tMRWtluUNZxp1aNGaY1aAth97XVfjrcILjg1fPYtGatpiwGxlgZQkIRBr/I7+1IURm
	 9ijtF5oztTdJ9cAn/xgfZ0fOlldgw16HA0ieDgJ3458pHLHoeOj6zxoITpkKbrxlvr
	 75JqgPuvfzNrqj0xdga6lmpxKl0Rt3I+Cb9mPabf6Z+hKxqqRtlWl4doYkRcwpSBxQ
	 YenhH+BFHe97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50184ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192805332.11650.15412031030843491613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64d0a4e23dfc44f772fe28e1d3e15b19013a7a1c8fd8025e8908b5c8d41a77a
Date: Wed, 31 Aug 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661928053
