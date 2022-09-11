Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D6D7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C298C433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662908453;
	bh=i5ANuYVH+D8yYSRHEXVQwSSSywdLTwUhC4Y2JLVkmHk=;
	h=To:Subject:From:Date:From;
	b=ehIEuCzdqZJ0c1GN9wRCSPXxwSFhC5juQ2t9DDtwkg2WXLjp/6TXcILGOsQlNU489
	 kOyZ403kiiVzxN6y9GKLNySOqMgmYrX8BbSBtia8dgq95g5lCt01jdJC/255T2nptU
	 BjxHIXcWL0YLDO/W7jSHP38B5ID3J6HU16faow17voyo5sDvEiEXnO/bp8EHfKiDLm
	 r8mLJDXSRu3RUx8LMMxQIdYjSYoKoxFDbqJk6n+np8agg0lROwlmrKrBNVxgYgxjMc
	 RKp/mWv09e5luQ7CvIJEOC9T2r475P67h57xR7En+ErtWIulHIs9FSWW/vTlmIVWq+
	 o01+yjY0uQlDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A49C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290845332.2106.15210825626069632537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaaa4cbdee701c11ce3d3fbfff6194985deaba76c27fb497f9dd43fc9dba2a5
Date: Sun, 11 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662908453
