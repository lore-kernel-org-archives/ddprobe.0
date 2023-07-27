Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE1B1FA8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 15:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2316C433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690473128;
	bh=s3SzEYpJBbmdB0naJHyk/EF1enjF/C5pFWP545Gdj0U=;
	h=To:Subject:From:Date:From;
	b=bQRKyNQ/9xwbJUYKtiHA8l92ZHL9YMvGVEu1DC/l6qTlXDGvMFTv4QMK0nlqAKNge
	 7IVpnL0SdtjOFshoTgqBd/iCctBbDAGTJyTkFWx8kiCeHrJeAAU+TkFqdMZw3Uo4vh
	 iqwGIAO+/xdYAZWdcdxhqNGov2oIxuSyed/yuJy47cok1ZLxLQM01xUrPhpCmV/2cE
	 S4I1Dd7XtJJBJSJJjJ9Y7qzzZLSMew9OGn3sK0gv+QhvgA+GI+3QyObi+GQeBiJCpM
	 dD+Q1z0/msQIeST7XLCAm0x58qFkV9no84Q5EZLuBO0aPgg54b1zK7KYBV0Ck+dpaQ
	 C9kPRJGWOoeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38E1C001DC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169047312866.26071.5480823468168259324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f54281de564c3c4829eef621ac3e7bce6f6a7f6b3cb2da343ed1240d743f573
Date: Thu, 27 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690473128
