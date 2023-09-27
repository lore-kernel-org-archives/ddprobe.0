Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603C963DB
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 04:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD93C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 04:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695790508;
	bh=1IcSSIY2csTpv09gsJjdh2Nlwo6x0GuIHDsuJKI2v4s=;
	h=To:Subject:From:Date:From;
	b=oqV0yN6c+Jc6S17A0jaK4m2D6wkPtCc8Ow16yK+PIhHxBzZjAj3ihwiBO6Yp0TRhb
	 aiOhvG7KG3/4mbFAqKgsftdq/Hadh+whKY2DBMiYAfPC1aZ57rPCpDFFZCKyAe8TGW
	 j9E1QtRxwhHoxmV52O9iww80e3EMsMTdMmlInT3npoip/8alFZDy0tYIt6S3KRWNza
	 P0Q53TQ0Z3csycj/z3EKO3DBEV8h8N4vNRicdI+Og79W7v+Hg5IWO3z4j3O5IEgHSZ
	 gVGBYpr2bRKy9B40l9fvJmlkgj5JnnP1eYCwDhDWnpXW7V/0lDzijRYxbDfyBjdlFX
	 iGpyGqU0Rg7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB04E80A84
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 04:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169579050870.19061.11517608175872456394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aec09219b520b09ecaa8f663bdace423dcb2af874871b05e2dd829f2855a09
Date: Wed, 27 Sep 2023 04:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695790508
