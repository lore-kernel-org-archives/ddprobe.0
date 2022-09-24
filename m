Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C7D17D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA34C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664014253;
	bh=00tZBHqlnedwtIiP3r8JJWvngomBtiPH4X30dicSyJk=;
	h=To:Subject:From:Date:From;
	b=cRYcBg7k3F2sSRQxek0llgzQUKdj3PD5f/8cfZ948+dJkBNSLbtWWo7XRkr60vMi+
	 MmoRtWD1+AFidwXOYuI4Q2l/C1vY3NbqCxA5oWOiuCEs8v8d1uk/CofZNuXP9h+hN9
	 HY9qq6tua1Cmt+QaKnLYcy9XkWjf5JeGKnqEfDAa+9AkF7tkI54H2HPMTELAxAF4CH
	 hA6CQ+Tpgr3H2/n/s/yG60WuAy2fRXuZkNaCCWqzGCIoF5q5xc2umhoZUrCERB63Z8
	 t+zpEVtGafsfCEt9OmvnDQ7IPGoxe3GvNuQ3XX8GEcLgYzlSQaXJ8Be1mV6/CcDkxD
	 rSX5OFh3O4eQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F03AC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401425331.29865.727414045842960009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916242c9d18d301ac03c2644db1cf14637ed03acd0a2482b108a163826f0e3b9
Date: Sat, 24 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664014253
