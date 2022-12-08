Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71F17F3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7863FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670492454;
	bh=UFel/4s0nGOjUBeBvbSQ8ZrdQgfETtFHFHL2K54+K+Y=;
	h=To:Subject:From:Date:From;
	b=WAVx4nrlLxikAeTBb/m4MojgJhg25krKEBlSQ40NYzTXXPp407dsK3dfqEPQbwaiO
	 p2tikcDHvl4+VfBTFvVAA+xIorYl9rncCmw1XOXNRqazPSX2ARzNvPZATSjkxNgmyd
	 /emVydjou+xdF6GXs2Vfhqsy7KNQeT4Bqplap+OnsWC4FN1nz8U8GUT5pbEjxxPpJu
	 Ng2VJ4Lr/SNfsPR8SBcA+q6h9v2h5C3s1720r6S1A9ne4HSuZbjJcAn0ysGJHeF66X
	 yEhaPQTWQd+6AprsVV0z9HvbMl7weXk4IGxhrLoX15EkjGY/iNGZ6Bntm6QNw5NRma
	 62cmB09cw/XzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCE2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049245436.10700.6461155561883976281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0699fcaa4f7d667acc2761ae549656cebb7f1014bb85c12127610c693688b90
Date: Thu, 08 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670492454
