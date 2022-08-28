Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD260184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C4AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661647852;
	bh=/vt3Syi8mwtMOJV8o3BrWdUmUzsUeiNj2+4ZNhQD9Uo=;
	h=To:Subject:From:Date:From;
	b=vBQqw8dG6avjcncSTalu+r/+QM63jChiDtw5YY1KDFM/DyusRyESIXBtnW3e4QiWd
	 rNDNTZaStFDGzGZvPQZxqHPgYJ/uK6g8Igvg/LFTaNKiqnlP0RXCqamWa/F7uAnXzv
	 j7lkvbRwfUzKhNgrP/H+Q6OK1g7CRKwKpL2ESskuYkmz5GDAmJyrekEZ00pOWfhbTP
	 FjbiDkuyFPY7vkSR7Sw2GG7Li9Eci9vukjhNddPaCxodplw6OS40Gic0NeXqRDpC+E
	 21e+GSoNGrFUeekzjoBI1Gf9nhcsGBw7I80scZVt5bfcKkHfJ57QZNzuqu+gC2oiyR
	 9TX/0K7Vk1wmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D84AC0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164785234.9473.15927114026544265216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09389d39b49eab6e08e54440d4186bab7d037760ec4495af8309a1dc23d4e4ca
Date: Sun, 28 Aug 2022 00:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661647852
