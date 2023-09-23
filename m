Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0D6381
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695439508;
	bh=8s+7Nm8t02L8Cz7sXNnWzN3V7nVjWQa4NtHV4YcbK0s=;
	h=To:Subject:From:Date:From;
	b=aKWCDGl9E1DKnsyqFbrzPqb6y0+rLWa56YIHhTWnCbD0f4E2Ujy1JIwUe2GGv6Yxx
	 Qh+pBcvUOhawBwxxUGqssM4zoFspljoXtyz0Hj6rMG46xBnuB5/VKxVQP5onhBjKi+
	 BDb2boDNq7o0SdFzIFAgCPVqKl69qOfZzB2JQGrBAtfeWDvozeL65OXCab8vFHlGxL
	 gu725fk2acPJx1KqpBX/hDowSGm5Mf6FkjQ7S5eW89/u/omK5ShxvygQlZb225CxEg
	 J/q/xNA1mH6Rbe7Pmq2e6zb9W8k3TMoYilEVPJKv8Eq/y/y0WoTDUQKHbxdkpr1UiV
	 d3Z0o0qbcc8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B044CCE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169543950868.28036.14031594686293281923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f7dab6d235edadbe95a2dd731744a1c7b79434bda8b930da40162c6dfbf951
Date: Sat, 23 Sep 2023 03:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695439508
