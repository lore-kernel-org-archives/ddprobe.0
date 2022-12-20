Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3B81876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AF1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671526287;
	bh=AVUVxklJyftcKvppTLoDt1EQiau9padx1tEBCy5YQ14=;
	h=To:Subject:From:Date:From;
	b=qjSnFdGzVmjasocghs/Xt/2cDQqSV7q30PAXR54+qX3xbenpgyXsxb1tLkJcCzEtB
	 Kns2rzvfYGufsbo9ACfSS2TLtAXvdQWmUDExuu4G47gVQNMn4A9ujPh5J0rwjjngoi
	 OwJ5i+iOZVyZfcF5+kbPqxnUD81ikj7QitF45n6dH6GWKpVSet+A9p1PQeiZZTX8dN
	 NONh3ZlA3ZdXr+0xNDgI30aPun94gDlUxlk3K8HkaOr5d0dzRXJRpqVLLs1IvUducD
	 Ykct9nirnpEVxh8kPyo1k6p7MzPgNq8nhP1ZSoqnEJ5W59Qi1pFnN5+QhKC4lVMYOa
	 wgVeLe7EXrcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED54C4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152628738.22788.11444126206818817591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19c62f50051d586d2e44dee97c6695ea302108e058f6ee2c4137dc6db38aa94
Date: Tue, 20 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671526287
