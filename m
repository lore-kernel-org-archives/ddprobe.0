Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC1B656
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2m9slh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 059FEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697680693;
	bh=uCo4kFO4AMJTH+f7RXfoZdwqaWl8IcACcdIFzII4NgM=;
	h=To:Subject:From:Date:From;
	b=m2m9slh6l0wo+xZdhz+IeU9IADiC527ZiJax0PGp/tJgi829URgjAMyE0w/BO5qsa
	 2UAz9BDFbChA2u29zO6imhVmhyVaGmHvRTjpRwYFwv50lFHNe7Eu78vOHlX6OQzay6
	 k43CS39yt43n04bfGFSd04r+0q5xxAAyS6YfHf+as9i7AOsqz28m4mY3inTT7bxeVz
	 G44tWfSpRq4W1zprTZv4OLfiqJrQXzPzl3e9JdXKrMaiYVLcwCvd6Lrk8v+yo8USgW
	 KyTH+uMrD5Jhf4GIdTvczuQu+OYXcvvWGO0CNjw5c63gGxdqGUz8LGNRg38HHEDCDJ
	 4MBa9lexCvW4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CC2CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169768069287.3567.5874621679637822476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca60ea136c04c01e31a136dfe457094b84b987625740a2e6616d23ade28c8954
Date: Thu, 19 Oct 2023 01:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697680692
