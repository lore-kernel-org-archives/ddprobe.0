Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62475C2CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE48C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687218128;
	bh=6brNpqDPP4UOO/rr5uDFG+rkpPpqlnwdTfnB+mNCuxE=;
	h=To:Subject:From:Date:From;
	b=BRwUVC3/5kge5xgR7nhWcKCQxjODFE52Xh6qnYrd2JYV6iuIpLvILEuIuw3yy4xew
	 0A/iCoK84BZE864IzuGRSoKORfsmgV65hZCVaQqr01UBjHzN675bcqKsZRdTwomgIx
	 wu8bD9nbBnBeGb8VBGS11E1Y0Je6fJnR4JK4kYvzHxiMGDg+tkJFO/GsQ5IjMIH+6S
	 jpSCNKZFMH9+Bnc5mq4CR2J8GZI8mvI4Ekneq3xdvmRUcDuU0yJoD3Jj9Gs4YU3Q3H
	 ICjb0K7CyeW122SXUvhpAsGtMXaaHhvPHzKotUck7Yj/PR4DTg+SU+cp2+PyeiXmSz
	 pv0oeVWx20cbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C3CEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721812871.25314.17247584218074617228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13309d07e06a8cdecdbd0e2bafdcb71aec3239d30f958658b7db134adbfcf825
Date: Mon, 19 Jun 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687218128
