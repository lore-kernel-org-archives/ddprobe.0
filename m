Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EF91FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E69C433B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661483452;
	bh=QPnjcmlrZPSU9ipgFkSYfnKT6O57OjYGAOptoU7BwzM=;
	h=To:Subject:From:Date:From;
	b=b9naifmUW9yfXe8y/35mr/G+9CLtbe8pNttWCEp23SdWRO+c723U8C2HhEMmggzuQ
	 pscXQRHrBlfS4QaTVhMfs0H159alNfAROdC87UfRNASeVzLkV06yxll8HFV69YHx5r
	 l6YuTLggGj4APz+FZt51OQt2LebXp49L2FUUFxMAEzzqt2lOk1cWkTLFW6hOmWVrNe
	 nXwk3M71pDwUQ36GFWHXiPpq3bxIM1U/DKwHQ2zjPyOWgQMyl5FR7rGJWJZT7cPNFf
	 9YOO8KIs6cQPKjXHcu36oi+3sN3+g2hRrxm1+cNo6TjBGEM0hmALcjWsv6u7yRncra
	 EVqCU4tJu0R7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5917CECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148345235.17802.7135988190629409006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0daff3975f8df34da3a1876504978601934ea8224808088385d51c988cc693
Date: Fri, 26 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661483452
