Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DC363A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E19C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670438454;
	bh=tsF14/VVxR2+XccBY6WNu980h90oId/1wIEEZcF2jT8=;
	h=To:Subject:From:Date:From;
	b=efLk+oqoDhKea5riR54xd4PL2xQxIpfn9ZYrl/MFFITQm9UjJgYm2fbpGewe6v9lU
	 sQGzA0bEI9g6lAA4TyQyqOB++aSAmhVPp0TmcHLbpEbr1qd3Ad47QZaT1074sHV2Ct
	 Gf1Mea5uXEJx5kfTjegab8nYMZkEg5JvN7i4iYOnNHfhRheQCQpDewBnAnwCyWJA24
	 Eb2ZntDsu4A+y+ep5fFEmj/jDTHttPu/P4QS/m0ymzcQNkWxyA3ZF1SLijLITE8aXh
	 phbSF5pSLkmXTGmcuAKg6r+QTRr8lUBM2mdbrH+tkI0St1ZP0GAxJwoXjFaxT0isNr
	 4X+ScfiomuEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6451DC47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043845439.13582.9818546678506073698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4257e4aa08de8bbd6753fb6c4d6988afcb617e71f259fc644ba13cb1cadf8eaa
Date: Wed, 07 Dec 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670438454
