Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60462139C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF405C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687140008;
	bh=u+In0mfeL6AhXke5Z61GbzivxYF/NsBJOcurokmiVl0=;
	h=To:Subject:From:Date:From;
	b=HTUe3xqAB/dqbn2kev6kSh4WEkXK+4xh3pf8z5zzbt6K9hfhczGEvLE+5eMxMdfxq
	 1cx5sY91qn6jKhHftHl4rb29fAYEtcr4f3lUK/kkGfzC+++MkRh/9lc174J2qWPK/x
	 1Lo63X2j75dyiIUV04Y2YXW9eHW2/oxrzwO4hI40dyZctaf1p5eDzKXu9pIMs97DKv
	 UxFroZvmuZ/QUZJ5ys5aBWCBHU1FXqhGdFOsfj4zTvan682+IDc8aDXYJdIVzLL5B9
	 nCRvrGiXW8TeSCAIErmWHucclRJhvtoJNfYyp9LRM3K2mjkycseDnR8ff2QOEhtelS
	 rsh8yXUBkRpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8680EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 02:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168714000874.4175.9551525365751614383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcab36480b42945e78a0a0fede16b0db341925ce14f534dc59d675764744711
Date: Mon, 19 Jun 2023 02:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687140008
