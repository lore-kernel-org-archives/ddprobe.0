Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB573D75
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C10C433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665519053;
	bh=HNjl5l4XixGhAaQYT/1VuSjF/i2y8A7wSK6EA4Eus5E=;
	h=To:Subject:From:Date:From;
	b=Mej6/2wg+6dmW6l2nzOfw/hwYgm1ksubm8Zz2R/Ao6FjT87jigAHCoZDiM24Ju2EI
	 Hj98cZ4GzUvQ2OJKl8sq5TIiedgMe1Vi1hwti+/kzqmHbegSMWl55fjDMLVGuNhWOw
	 tIC6bUOXlWNQ0wx3CC9qdOZkcvqUkFYng8bvTNFEtI1rqqCGCyUuhs4xGmEx0LrP4p
	 f4wK/hPHQ8EYJ25+YNxYC7hX55vhx8GojDplEUctwzFoYsuugxutbce7JiIlcWiC/V
	 FEXC52ziRCqGakLAwH0oJFRS1qWk0kqevv9+CiyQxwrTf3NBUK066sbXy0oSefo9wm
	 BUn3oDMkCzi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D202C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551905337.27421.16454701413223636632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6abd84654f309a2e662f26778f294de0ae2d6ce0b5999f5f65f59fd3e816ed7
Date: Tue, 11 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665519053
