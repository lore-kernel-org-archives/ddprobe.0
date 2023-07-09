Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE7A7F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1579C433C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688937428;
	bh=9WXjxUFtmaUuiiHVBoulcS5NZS9djXjtZiMJg873FiQ=;
	h=To:Subject:From:Date:From;
	b=YuYFo7mFIt3LrRSclSPoRYVRT41Ydwf6a2PYry/vt8HyfdGmGN3OqL1jp7IC6aJNO
	 HsgNp1IP1p43M2Ovtj62GDMBGxdEobch+kV4CjPEhN+c7Qm1Y0ljYJBe0mJm8b2z9O
	 TBoVl+XpBWvMgqdbWFW94YY95Nbqrk2MoDnlI3UTckIuFAqHNndfJuSdcKXdQZXpVl
	 QpDgZP9qLyDi9vDl/mPh550OA5FAB2zI3xSZSeKDLqUDtBrwCctD3aDeeyDgs5/nmh
	 DHa7T+T91R/r9nplAY7SgJaVKVbASIEEcGeyLHSWeJ42eeDd3cpAfCS8FOp6iOpFFq
	 QSNqRCBMlqY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FEAEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893742866.25512.2782903101079700169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0409892572d0ed8704274c0dc5f4701e128bd1a69f03a6bbb715e541ff637070
Date: Sun, 09 Jul 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688937428
