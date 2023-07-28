Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A698101D9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD95AC433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690534928;
	bh=4PDxscoBbdkP7SAlk0LvMzgAgRqmUwD6b2tRs3L2hto=;
	h=To:Subject:From:Date:From;
	b=REOCevpy0uFi95fGqrgD5nqryPglesOfwU9osNwOerTNxpw1oD9Irb0SR0o0C9Qhm
	 jWy9H0qlEAfUEjMGCSPi3a3hOpr6+GOvTLUDHod12UEyB/fFOKf9I8W4d4ePk1yspf
	 u6/9ACLMh3HBfxu2m6VXolQuLY3dxaHjtAX2yac6ZgSueTBGKZR0d5wEYXftvg6X+O
	 r2EUWW3HVP5Jx74ZxcrooGZC22B9JDGvNOnilaVspR0r4yq7efDsUicCkA97nMrI/o
	 2WV5/mNqDEZvOxR0+k0r4UFicK8NRUI2eIIGT3AGU3BcCXJteely+bE0RSnGq5brPk
	 JOqmsfYf3CRSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F68C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053492872.7210.816035155072622725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3a93aa5c8d87210932622a76ee13f4860eaf009eefd336430156697c901ab3
Date: Fri, 28 Jul 2023 09:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690534928
