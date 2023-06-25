Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E08A7464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33C5C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687723389;
	bh=WZRDCEpvT5HG64NgGDg0wYW2jV+9jQ4kmxQYFXNSWOQ=;
	h=To:Subject:From:Date:From;
	b=gsSk6Rls0MIWwYMFp1s88hSU6Uqe0M3WrSVSQEXb1DAWgU9L8mpZnFqZ6JZpSPWZS
	 ZHThkv3UHOpch6EMa5hnMrmfiTyMTlWw2ZVTVUWpRKQ9qtqJwz2sEv7VsLXOk5r43N
	 hC90a+ropFbGeFoMW90Wv5kDAFzrnt8r181PgUFmxajsFPB/TdfcPYgF1q4W+2aEU5
	 nwQfZUHPNcCaxpmQWI/xVkgKuV5yCT4fjJrvtMABlvq2Ea3axLl/kfqGZ11CsVa5b6
	 3tHaWY6kV5dXm1g3dz22MX4ORv/rfgjEa3QOt5wVyftPmoyjNZ7Myz9DYQvnUVhTsv
	 6od+YKYOrc6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3290EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772338879.21840.16355385585434699574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb01a8978b5f4efdc41b9b86fd23c813c24666d78aa06c3341b8254c163f31c2
Date: Sun, 25 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687723388
