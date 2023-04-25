Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E947B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF98DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682388245;
	bh=9pv4sO4Sr4ttdMhrPE07v5u456lF4dMZQMlI5Pz2hPM=;
	h=To:Subject:From:Date:From;
	b=MRi1+cPpLdcJgVwlN29dT0Bqa8IeC4stak1dPO1dRso1zHbpOZXXgB7j1BfquW/Z+
	 fARYFQKC6kJkaDK4uUxee/krqaEQfeL7OSwRFWB7HcOGlpgKKQIUchBGkvBZs5iDzs
	 AxtG0YT7gJwrc3sByBm+i/VV9uBJ1G7AwFx4PT4XBxzeCp8w7zvseS9PP/oqu4SX6a
	 OFjxb8WhRxoURmm3nlCcN9ZpfU0tWrOIis8aHVxsN9KX2LRZFheNHrnOPZb/qlBp2p
	 uSV5oSDXt+PwtHNVbsIy1Dgp1D9tU8Y7ipHRTnegOZLWGy10XjLOAFPvgQkz48miXA
	 Ss9i0vAB0hgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23A5C7618E
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168238824575.8747.593430174050796713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39c14f844450f21c4c220090001a5b826eaaff953d6850e63281449490f4288
Date: Tue, 25 Apr 2023 02:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682388245
