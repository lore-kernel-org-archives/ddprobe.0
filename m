Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C707C14A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08FC7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684915506;
	bh=zdxrZcHrZ6xVSTKoCYtu6d+h1X2lrRq6K353YwKzLzU=;
	h=To:Subject:From:Date:From;
	b=JZ2niCHDxGyeI7RjeOvfCoDELPpAZqjRjBxWV8whX/d/riQlAOc+tUCWOvxU3tuYh
	 i7ZH96WhGxzNc4GcMXlt5Ww+u6KDOp1zAnuPNN5gU63Si3nIfquWHFd6hBq/IKu7Ri
	 5buiepxpKpU7ms90l8fyeO/t9pgO/JAkRkS4WGQCi32JGtwPAKtBb3lcr92Xx3FK0O
	 lxZ8IzphUQMeE2YM+PEeY08z/8rGUho2YGH2w24A6woKavpBQItYdNbeio5XR9il53
	 w8WlEkfutmmrjYZrA9uKXJon+Uw0uV72KePqyP1lHKoUKYgXjiiWgaCLiddpWaJCaj
	 r2Lr5ffSKdgow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8995C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168491550579.31574.7252417159615096443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4463feadb6ab669767ad4a9304343db41b2ec1961c715788fcf66fc027dfdfa4
Date: Wed, 24 May 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684915505
