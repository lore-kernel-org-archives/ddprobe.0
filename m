Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489182CAB
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EABB1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684997706;
	bh=EDLo1s1duFLz1bsvauFS0EJKP7Af+4wC91WFkbO3jng=;
	h=To:Subject:From:Date:From;
	b=fp3vowTETBzb9A9lXaOyiMUnIqD7Qp//bn3/VI71GYMH3WHWMrLkDQJdcJBNY3NoJ
	 Ht1ExYwAWdY5yA4p3z6IU9rP814GudFVetw7FUzjwR3Ti+xYM4vLH723nSQiLR/l1r
	 9axYMbxyyq5Kz68DDecB5dIuNED7sYnaJ1dxxfVcL7OhyFQ6GkW2vdw/3nXA5E06PM
	 LT0Pm2NntJdumxCySZGoqrfIf+fbvnBTOdaHggC4sbIwYuBj6fN4bG61SFgze/YanY
	 TQAxd3l/ZBwDZjNbyO/c7XFayKd8josyoIeLVgSAiZ4bEygBI/T6zunbLoWT0lR6vW
	 VfAxTLWdqdo8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FA8C7EE2C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168499770581.18030.12383904915648600879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2924ec8abdac4bddd163497dee95163fd855cd91a0a636235b1892818af3dd
Date: Thu, 25 May 2023 06:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684997705
