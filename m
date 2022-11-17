Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C205E290A
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D7EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668717054;
	bh=F17RD0YcI1jYDZ6Hat2bEVe8GPlujcc+UHIkUHgRRvY=;
	h=To:Subject:From:Date:From;
	b=okkc20z+sSf/gwnVW+XAlFdAyIhmRR1fvI7POUA0uY/nOHEbz6ppH9HoINtux97S+
	 b8V77vTsjk5ckzKBc38u4ihW1YR0kZh8YXkbpTb77KZxXldr+8x8df4gJf7+0B4T1R
	 GnGR5Ckx+WrC//VEh4tM31inAlh3skHoVjExtdugC70JR1MZEuf48ZHzFwaSEkDd4U
	 EAd+1aPEkQCqZoT15u9mWC0UhhhEu3HUpSgG7eXMt0sx8ij6dUBzxn3iuojOfs/qBj
	 XZZqxvr8NelfMFf/jW1RQuIyvYeST+M3hivGXtZix+OD+j3S4G/Fkn8IJVu5s1+58K
	 UnsMQW/vFekGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50293C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871705432.8061.13845199044470601422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f70a8b62a9bbc19cf1ee3b5b18015fd57421a49de00ef024cac00d38ab0923e
Date: Thu, 17 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668717054
