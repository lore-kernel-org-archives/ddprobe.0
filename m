Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56C37B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF8DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666617053;
	bh=/jpYDO34Fd/MI3Jas2FPbx3L20MnjUxJrpJIltQTfzQ=;
	h=To:Subject:From:Date:From;
	b=RDUSEXA6VQeJ/Uk35loaywIxTxiYKiWiqJ08Xc4ZSQDeAy2V577qsXArFHiRIKxwO
	 8gaymggKkL7ZQwB46/AaCimrM+Plo5KsaQMUuP4bLGOIOTKXv2n5OT2eBs58LyiGCX
	 dpTyxJd7+2cADKC2Hyl0GpL3lmPPIuqzcYuMzHRCjlOb+l57zMPJWDTZjlPhWDe348
	 C9YDxnmcFZAwAcGid5Q7Q53OYQznZdgY/PaLTlxp4j5pbgv076rXos80+XFaE18jpb
	 snhV6c7lzrlzgKSLT0r0JehevWI55wUVFbpEGY4fmsqbs6EAx20cVN6wdWMSuoewC4
	 N96wZUTe0Rreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EF1FA3741
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661705334.19750.4034878348052676904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961bd04fab0c796d9526c3b8f8919b55afa645405bceb597844decb3bc58689b
Date: Mon, 24 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666617053
