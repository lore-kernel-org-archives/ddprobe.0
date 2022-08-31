Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FDD2F2A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B8EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661965253;
	bh=ScNe1BWa8DGhLKq5G4byLfJEtgjxAuzZPPi/Fc3YD5o=;
	h=To:Subject:From:Date:From;
	b=WHbJQURDgq/wkW6Zl3y1jHCufx/BajgNFGnR6ZnbjeQCMDjYsDFkseK3B3OrzOHGT
	 NT16ARMTPu3k2iWerHQUVbSrVzX0tgXsOM+rBVSPrtdqPIWge5VJjyMhI5PKJ+4HSQ
	 U4Iz5bKMsOFdskMJ3qzw0s+N6ukNMIUel7sXPTl3gGabaihGpXrb4IPZenTtcseJTq
	 8iR3w6dbE31cSbDfQKdefK39uT0XgGa3Gom4BuwwGKXfBoNYXQAtqB5egaKLIgfv6M
	 R9PDYlAJvD0K/NptOrduiuJ7cWtrLPElLzFuVa6rE13jf4xTmbKuxtsEJqvudp92a2
	 j9GhNzroi9a5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A8CECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196525334.15177.11957018410467285011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3028c6c1ed8f40434a2cb71b58242ce8dc908b42d4a1df466d14e4f621e5bf80
Date: Wed, 31 Aug 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661965253
