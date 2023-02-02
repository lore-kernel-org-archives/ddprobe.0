Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405CFA2A
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3103C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675314965;
	bh=4wDKFcwEIBLH8w3vSBymwmFPedMYWt3IHH9hNVy8RQs=;
	h=To:Subject:From:Date:From;
	b=LaP0YBbbi8fRIexfBrSaYAlqoQsLAX+ohmbXZAVfWKRxqLkXe/Hz/a5yiM8k5ZItz
	 qXpM/ex5Ayi2D4Ke87JV8rW6luMLmBVeM1rlrVUZ8BuozGuPEZy6R/NJ0/fxIgv0Q8
	 zlmUpSFYJ8payOUQ/f2SQxLCM9rp3sa9+Wfum46N5Zg9HJ2gICgajEBXwXb8wpK7QQ
	 igSwM5uOILFTDYUxuCMa6YvUyOW0yYcLAkddmzIhz3AjpUrh5Jx3cRUqzPZD0l3m0Y
	 zWsHZ2olPsxird/4XVm4dkPUzpRQ9iN09UMopGAf9yOrhmFTcjJ7o2Xm58kWiPHnZB
	 9P3RJmXeqzyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC188C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167531496576.18787.9101226854703427104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06f7e8994c1f19e9308b5c13a64d815d4b66838dc7906608b0c58b89ab2a858
Date: Thu, 02 Feb 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675314965
