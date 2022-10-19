Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95711FA8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFD1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666143053;
	bh=6ouCZiohiNu5RmgNCe5Wsr/y5DeS7GgGv84zJ2+rVso=;
	h=To:Subject:From:Date:From;
	b=QO33JkX49wWbFcWhYJCEov17dRBdNj+eDCI9HVhB5sw8qDusonn0sgUa0QLMtthMZ
	 iF9Z5W4DgRzarPTSRTqhaYAqCNmmxmVJSWLDl2MBMgdZizwbjBtedhA7wX8QyCRC10
	 OzCCTHhZyZuherG/KcWkjkkNppAFi9lKUZUMiiaVPL0gcX7QpNdnHWPV8WilDzptob
	 /OdTVls2mPGBntuELCzlOKDMr9/lwqcyKZDEQMYzEfY/Vw23XDSl4L82NjHeRgQios
	 0Fjdp2ZEdidwdFUZ5PQ37BLpDNSrtjXZJmU8khtYlJuhYgpj6lY7bm49ndnKcotGHP
	 +K24Z0cIE4YCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CCBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614305332.9400.13372570121741823018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7715f4888bae1cc96938d5570509c856bef11da270cf9a36e5fe06b1c0d7ac
Date: Wed, 19 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666143053
