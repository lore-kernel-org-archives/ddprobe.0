Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21E7186A
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3F9C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663735253;
	bh=0/WnCWv7ng2Ka+/OVaLRdVKWXdlReFF/aYN9U8eaxI8=;
	h=To:Subject:From:Date:From;
	b=hlA8xIaIqaq6HeGShwCt7fLtU1bd+O/8vyjtN3G1Y3oSnPfnESYTgdgywvTj3l3dF
	 1b7UTpcftnS9zQzyo6ktidskePk5ZlNYUOJsy7QrsxLCqAJhPwJG7a2bjIaxrF1Jel
	 sZi8D5ZGI5WOZHAiptKa/2wf+2Df31RiaQgoFKaQGttFpqfI4rbbESmMdtcFlkOJPX
	 0JPQr8uh5i+raB2p1RsqCECjsAWyfFFH01VFX+qfNd7v7NGupeL9wGMcGUEuG5974V
	 Y1wfFFlvEbJqJg2H5FYz9LS3GZi2r/WDfhwIQx4D7tBwZX0Htlbs+VpKNlPfIxOC3s
	 /zjPPgCVB7GMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53723C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373525333.7841.17216549182995677616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bb30f7c9662a771e0a116b0f41dce9cbbf2139d27a0bbc3f29a6ec88a994eb
Date: Wed, 21 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663735253
