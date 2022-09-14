Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C2815A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5B4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663197053;
	bh=KvxM5vSDWMaaJX7D27TrxHUcuvLtcgH3rDnjvPMCRfg=;
	h=To:Subject:From:Date:From;
	b=HitnLA1ZTvXPNUcqV6gUfZ+1KeJ0ycElcC+62arvmV28J5IEuIvcbitpWvyswNLAP
	 Dm9psQ+AAh4UV6gH+zQ7+dzXSSnAtldHcsRNuX4cZjn2JuERENtk4sR5AsdjqJBw5g
	 5vYNkyLLY3UQP83CtxiK5Z40ZVYoZVTikxfrXrS+pOgX7NuNa3zhEp60tBh1Gi6Sn4
	 PAcoxwAS5AQFNxCeDi5UldRdUtjzpZUty7gX/5zPBfB624V3e/+OwdFl3RTQ+3LAER
	 UDjd+/0+R/mk8EojEicnJJqDJqa2a7HETECzT9crTgFfU7PlP925TMyO/tvL8ewJ7K
	 h/EurSPvVYi+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9B8ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319705334.21783.13196332832482840932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd876f30654dc29e17dfa18e1ceebedf64484e08122836195d5bb40360eff8e
Date: Wed, 14 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663197053
