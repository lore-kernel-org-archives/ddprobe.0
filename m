Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFB42566
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF239C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683401886;
	bh=yoBFoDQgi85IQjgAFzT2hbGplKmMFUYE/RhnG47wNJk=;
	h=To:Subject:From:Date:From;
	b=rJKflPA+hUKv0sWzt997HwHyG24JP+IX5cixwcGxCD0EvY5O7xMOZCv/wKgCWC2lX
	 q+o3xnNhjBJA7Q5g0f+5czvL2lrhGxKwbHhMThY++KkAUTJVxJDur/kFQkHfpEtrtx
	 sNxry4z0/2bsB1Ivzk44tvcGPRrMmhhm4qrmSHc5mF2XRlp9iBKCkhJPZTEnMu+TVz
	 /RgwNdNFlU5UFwyGtV8Tt91krdU4FjEIFA/A+xOXaRaRyn+V+icihjBU7po4tFELPX
	 IKRRkrmMJexLv2QzJ52jT44Cu2oEW7MYuQ9lrhtZ1KUX1fcne0mVsfVdkzW6ThTUsG
	 aP0SKg17M46EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D281DC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340188581.20587.4152123372355374874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425b8a0158f94f944dcedf93b0fdf925ea77958488dd5b9af7a00e56d198e98e
Date: Sat, 06 May 2023 19:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683401885
