Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DD5622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B037C43145
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662693653;
	bh=LZRZDe3Wj7i3aEyAp3KjcW52Dy28aGPdsG86wyISuVw=;
	h=To:Subject:From:Date:From;
	b=S6GPq3VlvUVRsO8/94JqfCZ1WGAMVlEHx5/uPsRFPZoX7dovJxVdkQOFtIQ75NygO
	 sBWl2Ygr7XhAmp3yYuTdwtPvQUEQ44aYCQ+wQgXAGVmXIl/y+AKiqwnT2NKZO2c9W2
	 DfCb3S3bV2U75dupb46LzyberST9/ccF7pn2ZDxG+6gDXzyAU7NiAWuAaRUIC4NXbY
	 vj9UPYcN5kWiLrcXGVwFO9niRY4ZZZCKEypzEx2jHQHy7z2oL8T7ZWUZJryfph3z20
	 DBeZfIlL1zURsbnAPxLEWrryB+BvnPLz4X9kGE0taVuQ9caUungULInybpFZOlTxuz
	 Kr+nrY37PSiMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B6BC6FA83
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269365333.27468.17100255645054895494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc9a9e9edf4b4bf33e84d1a130cad4c096f8305dfc5c1b1abc7ee84141b4800
Date: Fri, 09 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662693653
