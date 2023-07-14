Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A9B4C9E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9650C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689374468;
	bh=PLmi+kHmhln49nh5kqQTg9w/KziRyKZ/4cTRaw9g1q4=;
	h=To:Subject:From:Date:From;
	b=VIvNoSL2bSaADDg/kmFeSF2VV796Xez/IXkrpaG2LxuBCP3pDMDnQi69Hxo9YewiA
	 /H6uIMpRVb9ywadKmHLxtccPAZRtsT4rwbpoHcJtgigAjwaqtOUhxp0O7+yWWjb/9f
	 N2ge3VxJz49R46ofASzAtSdvOG1T46EfgniMwbDLsyY9K4XPYpfIyukrSS3k4FV+QQ
	 Le3AWY/M4ciQwWqNqZ8pvMd5cPzjY9iyoHvyy66bFylmGXPUsRa9gPeBM1m8UBDrtN
	 RAByxGcLxGxUr/2ePe3+duIkpeqKwNc959081/Zy8pxD+RxYSeOFI3xBr1QYEC2/SW
	 t8JWUCJFdSSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A1EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168937446868.32574.6999660302052410079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9104189f777a0e7b6fe663ae76abe6b295bad12124ab5ab9fde272c8cdb59a32
Date: Fri, 14 Jul 2023 22:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689374468
