Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7DBEB08
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC37C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669440054;
	bh=Ksom2hswp58A5e89BqL/TjEMzFWUywWluAtUho5gB84=;
	h=To:Subject:From:Date:From;
	b=fpVZ6v5+Awas6jZw0uy9tKk1z3bEGVYqtZOB/5220D4rbTOlS05s9R5SDdr3H8Knz
	 Onyt0HE94mKNr4N6r04wyT8qRTnJsyPnopvWQm2FMCZR1xIU6yoW+FTItcvEqftIWt
	 QEAqRF96TlerFpo7b6beGfhnvxLp48X885qgc1x13hUC9laRJPQgFek6+xbEIyFmb6
	 lZLlRdGFQR0PNVaBEL1itSZ6tcS7n3m8dPDpwDHJEBym7QGb88X+1msw9tsH0OVsrm
	 aH5IzQfiDLJsgBZscSL6CIjBV227waAaSSnzLB4OaAMvpxwdL62NME7Qw1qMSf8r8X
	 0jXXh0r+C2f5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCC3C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944005432.29058.10835832228583827050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a27ea171e4c358e0bf40a7ae0f6972f4e78d3072c59806c31fb48ead4c4efa2
Date: Sat, 26 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669440054
