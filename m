Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6527715C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12573C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681796946;
	bh=9Q3UT92cBhcRkcl9BGzOKmg8XDJtyBXwoPqj9vnThY8=;
	h=To:Subject:From:Date:From;
	b=EQ3inKoPCDfmEivxPz6m53cLQBJdzmDaGtziwQkeV5olCXyY8SQkGSUsx/TpE04yC
	 b1T6gSlwlO4fg1C4ldWa67XTklSDag9mNRffSHvCXN3czMKqF+4qSHog3/uXwCCRns
	 +wx4iq+iOyDqUBImtthEi3Puwh2LFdanA4oEH/F2Vx0qyvdt/rKl+t4g6CW9AKvt1C
	 Ygpg+qOihicZmcEsur7KdxDpC8lPayx83HaQ3WX3Dy8ngmp7dvh0hqQs4zhkHAuoQj
	 JGjuFZo4fwGc2JvvXzUae/R5fcDvhjnOzyMxK58+uL2Z6p37dSQw0IzZtiynawxjzF
	 zZ5xhKkJtUNPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26BEC77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179694589.1310.17284002501934091377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41ec11f5a6cbbd48615a15d0303d82e5273221313079cc8b2148f670e46ff1e
Date: Tue, 18 Apr 2023 05:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681796945
