Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE478365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7677CC433B5
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663395053;
	bh=+MnhuvZz1GoyDTmOOBFjugK3OF/uf6ZmL4m/Y7A+lzs=;
	h=To:Subject:From:Date:From;
	b=fCntYa6I8l2tIU741Smj3ZFVUJiwMndzJnQgDqazysMOnSxAGL/tlVU/IlWLlR4UX
	 9VxqsJVuoW4Y8gwaRc8Ol2tdGydLtDAl2ukkE967gtuIsVUqIKUHBzM9OZYV+EwTgg
	 c+45uquwMfV7gMVycAmyNjCWflSODobG8MYFA8AIs2K4nTp417vf8ppe90/Zb7oe5P
	 okFwR8lOkEH5qEp9YRq6xKmwV+Tvri4Czaxwzqtp2Zu552K42wHUZA/9r6emv8FG8X
	 9RnCnft14iLCqh7nUBRv5a+EH4J5CAv+nPGIq6WxPIu6ymTtfgqTiPOxx0UyXfsHZH
	 AsUGnG8lNVAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546D6ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339505333.1512.12926365113850465836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524f218eba5db4675906ab9961de81d54829d527dca2e18ec99353465ced8b7a
Date: Sat, 17 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663395053
