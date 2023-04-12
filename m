Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472EB1369
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0A3C4339C
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681257725;
	bh=uzO/2mdl5OpAwNrPqPLZLSmJekS01YAQ4prFd/PG8ZA=;
	h=To:Subject:From:Date:From;
	b=cf8opzAfBH2y8ShINS6qIYWO2Hxil+VWsXVw/nDdeGnX/oPiCEMuSR9mYo3PQQSxY
	 nDnpWgWLzh51Ajks/WRrxN6Hm66JD2tVTEle5WZM38DKnNk5NpgDzSqSZeJbt4tIM7
	 8vmFm2bCYXe1NlWAKjqnWlzb2aJ+cU86SwdQIo7eQSucJW0yl59g3B6UnYb7Mld00L
	 5vBRuMMjuzqxCOwwwBMBEEyoOB+vB0aTTbmsgYuchsoaW7vJLykTzoLPMuXyYC5HQu
	 A0+WOXz/VG26eI43v05DBAc5tETWlXne277DgrFaMwbZ6C29VsygK+MfUNlh3yfiPv
	 k3F1E6rK1MViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2600C76196
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168125772578.23356.17646206749431791948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc93a84486b92afc9bd2d2f627fec85a1483ec0db27948a1365b916b3b48b6c
Date: Wed, 12 Apr 2023 00:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681257725
