Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2558803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A49FC433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665889253;
	bh=PV6cjDF+5M/4oxwu6db8c7jmV1MbZC68oAfbdDgTHu0=;
	h=To:Subject:From:Date:From;
	b=ij1Q3ki2ZnS3iHqMibn9MGFLTH3N6DVI6IqCf8yDaQeQoSwycTTji/FeJi5aTGYIl
	 4qzilLx9l+cMtkuXbn8Hx30UCVj7wiRtpr7TF2Bio+u/+8ovDorue6CQXqUrncbazB
	 XjJ8JPTckk4ZJn8/TNVcl14Wg5TreeZkbnnOsUYJIMox0p2nvCL529QVpkS/Icuc1n
	 moHleKO5tv/8ZfYW4JqHrANMPK8uvPORV+abjMVkOnIJJVQME+W5ZoMtNlXHDIKu+U
	 pGqtgv7KfSDVosvw0qOKbiVPmmPuAy1hSv1GK2ykuyXZJjYnSjtf/RSctCiAUBpucs
	 M2IRVTL7aKZSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507C4C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588925332.14226.9253875645303511761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee5c69a5b0251a187ddedfc20a75dac3bb8cc4590dd685806fbfaf1eb5a140a
Date: Sun, 16 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665889253
