Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13347B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D44EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674030687;
	bh=7a5jyt9MGcrSwtrk6CO3kfrdIWyxu2vAgFfEJJjzJ5g=;
	h=To:Subject:From:Date:From;
	b=bP4zWA5WLSbLST7aDRlQQYdcEGQ2ZLIcD25T9ybeUZQGT/KB+gd/F0UWnpvFBqk1W
	 IcMMVJN2LX9Gh9Agw0LuCpy6mMlWb8y8Zujz7aW3GnqE+mGtgCBuccKAKmb8kFlexS
	 oHk7UTWwMNmyI6WjYJV5dT8YIOiuGOf8Dih7Sh6TKam3B4+WCPyjzVObSlAehIti9U
	 tTkZCNlvSPHPM/kuM1M30OhAdIljfxRV/cVq/tveL3+/Phw/lr4CXn7qDivP5bhVwp
	 eefsWBYciFQznouYDseVGwqE7g5RlOxIVea0mNOeAzhSpsZC2IAPshBenu1wvWyW3e
	 UesR7J18uw+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E807C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403068744.4108.1508798571784429684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b72c336f66908f5bacb6ecf02663ec5aa4d3d1655d87c15eaa8d441eafa4312
Date: Wed, 18 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674030687
