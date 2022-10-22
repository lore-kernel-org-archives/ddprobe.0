Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C667B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759C2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666434653;
	bh=PdtGyQXzEHRSs3C57XELluKenFeGnXO3z2M8blRe49s=;
	h=To:Subject:From:Date:From;
	b=JrsDrA/aWcNDa8EmTZqCFE4C8Z+DgBvLujDrTMfXTAWWXtv1sfBWLJgwJdjrcUg/d
	 VlpQ74Q6RBbqCe7mhWLWy4+Ev6JMn/66xKKb9/l0ZLKQWhMUvUUothHcBWocId4/vb
	 jbFMZx1r8Ffik/DbmvAK6sqivi6gUdHW4NX4WYoyLZf1cGAbkFffhEzd4jYeGd7+/+
	 gVWSC+lg98040Rk4YuKt7bKHL/OAXHLXo9rl/wn8GtHAPcK4nD0x5osXQ/jcczlYcM
	 X40eCaa7ifgbW8IGtjRrDAmcMqRlOqAZMGOiaTPMvPtDQwkl2UVgi+HbDjunyxT2GS
	 n7uVQQvcO0pHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3E2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643465335.14697.3236101540023065835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c837eb7bf75c016c962cbb7ffe54793b14b3495d3c38cee1fafec25929701dc
Date: Sat, 22 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666434653
