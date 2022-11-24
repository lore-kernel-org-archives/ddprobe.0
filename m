Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0B92589
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70953C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669294854;
	bh=qSr3+aYWr6c+svuQJyj4IGf6hZz7U5OwzGmkWEIopic=;
	h=To:Subject:From:Date:From;
	b=cMyg2pW1OAyIgEzcsydt9UR/9tMnxSf7REoGYYyTjBPpQT7t/XLPgCHTM4rSUBb0M
	 YUd1ivzYTaD9HW6HwZSuM/pchGOeJlworVJf9MKAzjudFCOd7bccP1b5HEJAyhMoWv
	 9uJMwGFIKSRc4l8CmFw/R4mcaRZMvvfhj5RTiHUyDqOnCmEx+kt7+Ka9UmtellXFnV
	 mv0BzZ88KJT9jKXlcuo+sViFF4KzXkV+33fVaFiJntHTKtC6ihqtwhT2UwUtGduITg
	 9Rni4FuIex/ScshNhOHafXUwMs5tmAQ4rgqfAAYKT5H9N9FYRDre5Vmq4er9wyXPDa
	 5jpgD1ziybasA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588EBC43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929485435.32378.6569935350070517628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba17b8496e988b0151aea523cdebe018c900de9aeda34e52706c0ea46b30e207
Date: Thu, 24 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669294854
