Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87A023A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A73DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671619887;
	bh=bqdt2B9hhI40gSJ58Cz/areGFMQsCQLsW+xycNfLvsw=;
	h=To:Subject:From:Date:From;
	b=PQEuAyURMAmVgP7aOD8FB/djYMKVt1cB3NMQx0XeUGAP8HJ62xAqfio3WPgIabuZy
	 prXXehDIlA1oDkvNiVrQWOTW14bsiWEHrS4511ixA+SSxrIPPMUhrZcejS42bhygTA
	 mEHaQU5LOvTxuS0NUziZ/bYkJ30Qqz80EDtrTVIZ7RkeWD7RdlYepuU9SJtNJGL3dx
	 wGP2+CHWk6a7c2MKsED5RKY0nZSvor0Kcc+f3k2Cj5LILEN77jeKLYvIgnsfGnzLzb
	 SwDNSSg3BWw4RFEbndA2v2SD3IlRzcxZxGDc/1BSFt+dcyrPhnkM1R6DoniJYnDOuJ
	 SJmMRWiKZEQzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7009CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161988744.11039.1626143667144250793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145ae3b35443540fdf486dd3480a4aa11d7e0105cc43549e15837e08f561d270
Date: Wed, 21 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671619887
