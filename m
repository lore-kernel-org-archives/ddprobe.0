Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BCE642
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D219EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686719828;
	bh=HQHu90XLyQfgCBvAmiEdWow8Hbr601XkNGm+xmAIZss=;
	h=To:Subject:From:Date:From;
	b=gsdmWWZGsbBDJDQZ0GS+80KnpsYuWzL28uK+8x7/AZqwEuL7HxVHy5B7Z1yU/EveC
	 9nMITQrQKkHVkmwYsKZVCV9Tq/jvSqc3QCVhyXu++vjx7sqygjVHUDrQutc9kEauYC
	 ldzM49Rp2HG8egQGCbi826YMHiDRX9Yp4YhJUfzOKJdWBv7w5dabJ6DUTHnE5GaOlv
	 duZRRb0WuxVqcFmOgUaMLqMIQ9TYQ6kfRnRaA/Sy3B8cE+KoE3650lv/hhSrFY12/1
	 nrT0/pRXepyDCp2QeftRPKHnfTV038b1Nyh9V7GVsnJDq3Z4ZerS59EPGWTu4kMOW8
	 rYFcBzbGdVaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1850EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671982871.25300.16228171854114056328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831a61bf62e04e2cfb38b2e8ff53b764294e30676a3327ce250395306466f91f
Date: Wed, 14 Jun 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686719828
