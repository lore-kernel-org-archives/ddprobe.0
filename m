Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D421666E4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74536C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663783253;
	bh=yO0cSpjQfdBK6dJVwtAR2NVryhdHfOy54ZsRlbQUd64=;
	h=To:Subject:From:Date:From;
	b=SQb1ipRZyzzsnsJ9u242ikcf1uV9EHFKTZ7tOPdpvQBpELz8ZSCSeSOXKJ99PswNg
	 HTzZUkEAv/3APHFnb98oTW2KJwVtkyEvWKHVC1YmusFy2dGBwx5RSXHLxXLVyiBNKJ
	 OxycqD7nJLke66kz/X/tADpo19QJCYSD2zEbTsekGGsxFtXzumuGC9PlH6i2whDNvF
	 IKpd5NSFk5/shTFpbqbrGlngf+1+3u+YOEfj5pYG9/bIzRsSldF/7flwJFpv0Pjoxy
	 gdVttoHEYj77JP2jtldMffdW6rylaziIcohmOFZ8H0pDre3k2xHqoBlA0KdLhVraIa
	 BGskiKgsFOh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C87CC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378325337.15982.6188246152807604874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d3a46553eca097f370047dc3f4fbaa5223244ebf0f2bc00ed1fcf9f4938669
Date: Wed, 21 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663783253
