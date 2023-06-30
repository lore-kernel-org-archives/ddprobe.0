Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6345779DE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7EC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688107388;
	bh=EYhFFcBAIMk2q81BOMpN5MW/q4FSXknBiSRLPemY954=;
	h=To:Subject:From:Date:From;
	b=k6MPP8WJEsKwrOwQqri9mSj4gbpbuiUtwmadEggdofeRlV5Ypq1JvPq4IWMSZI8yr
	 BWb843MdnP67vDB5o3s+czcy+T+Z5b6hjoUva7DdPy4qsq8ZP65FUK182UZasJ38Hp
	 WM42uxnAWRt/g2HBppfA6YMPGJmHBxQbvDjfh6t9Mr/gDp4E0xKEBLucKtTXDpgwIK
	 IG5/V49ZtGxCMwlSUMvx9DVP9EacerHBYjJNzmEoOZ3cHxI0mA+xaL3XRJ+y8H+0kS
	 gdWX6Wa4F6nxoKVaZsam44+FIipch/Ndxfwo4buGerwBY3LSJg20S4mAPh7ToIeGZP
	 X+uRzu92mqA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810738866.25961.7756977371099904481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9130d72e80aaf18d3daa203d20c898cc3088635c0aed4312f0a38e77f2cb9aee
Date: Fri, 30 Jun 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688107388
