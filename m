Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8786184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A050C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661650852;
	bh=afoZX8EvrSIgH1H1DolkF6Cq8QOTVeZbACGmLW7V31I=;
	h=To:Subject:From:Date:From;
	b=r7maHvqTuNXeQkTX3raBiSEK7++0LUnszPAYvJELnwe6t9AipejLLDi7OEJ41WmO0
	 PywhVmNZpmVX0Z3teZmZpgyLqGpQk3u3UlFo4fpJa7BgPZ/sKXwN5IuLT06EmzJg1w
	 WvNVzeTqLDE4n7fGHQdyGW78y0bZKC0eqbyRywwf6ypzIS1iOyuIQzQStSZ1ngRWZ9
	 1tXFwqNlGKhEx4HGrPbDuTZFdEp7EIGIFN7iErDXR1DTHPSxqhcJVT7gSwsszB38vq
	 N1i5DBQNfYmfOq6EpspJMzXCY9Hax4TbmAM1ormc4dAWIx8G1Auq7KynxLwu+7nBFl
	 TJnzKm/4IR/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B4C0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165085233.29416.10032001148799430867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b847c95419335868f30f734184d330910c08cf2906550d9e6a49445852f68f
Date: Sun, 28 Aug 2022 01:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661650852
