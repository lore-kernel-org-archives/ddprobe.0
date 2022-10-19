Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E8928ED
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E247C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666206053;
	bh=eTNAwcJncnKieGJ7Rhucyds9ojtKizMNa+0LaW/SrRk=;
	h=To:Subject:From:Date:From;
	b=aqMQxlxItnHd2nzeFfaHEqvlNduCBqH5IwfiR+oseF2avz4SiTKeq0SgOnkFPNVLv
	 w04TVMA+7VnR8SK9gwIIj2Gf+2hcK5qPeRQMiTWjObfnoyVf9eLdzMRXMhJ9Fm+r0l
	 IAInOR88iyF4FUgDFAp426tIAz47py2XUq7P9yU/0N0OkxenZoNBHzLD1mNBdHT9AQ
	 dqEpI7v1RHHQQ4rYscmjaFUJdvviry/tqighI07Up9WZF8HVc1wYvN3CsIY13wzbjM
	 oOPU8f/nztX530MWoacVgP8+8LPtOibqgpQ/epsAcbtny8c1ticdCivNkS9d4T7M7R
	 4uphtwWfsis0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65156C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620605340.30219.10843105475634380309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfd55b8089444988d63f41bbf065c1b8c4aead352786fda6dd67f13eeb06ac8
Date: Wed, 19 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666206053
