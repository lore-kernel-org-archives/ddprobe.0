Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DABAC2C5
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8898C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687960388;
	bh=ys1NL8tF1p4Howut7+J+MAsecPW8Uw/sGBWHRGUa89U=;
	h=To:Subject:From:Date:From;
	b=tUx4gHn4Amj/4cXbxnMtt8S8hvxqkJ6Tu/y0Ynn3bu/X7zYw1WpeIjV+orw7R5KpU
	 vR7HxhWdlPOS6rOBDKfwBm8/p4a/lqIkUxPSRlkud3/Xc66bwnsPRBrJhvIXVDqllg
	 oCDcqrGd76DLNawAnFIdr3O+laIEPUemcZK+zNJBulXL2dVVNShUP0LRn2M7xWipXr
	 d/dJKn8kYfY3/nlN7iww40SgdVBVhgQ2NNx93+RYz9eZ4kQP7KoyAd6W+BofFLxagk
	 z72Xva41VmlQL3Dj9LPC1tGI51bwO9JAdHtH+LtrSrtNQAU8zsdzPj4ePhEwVoN8OK
	 cXPAi0rIk1f6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE7CEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796038869.6198.11032045643260371151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf5cf35296f74bbcd431c4767662dbfa76beeec24f2faa3d0239d0fd1de1bf5
Date: Wed, 28 Jun 2023 13:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687960388
