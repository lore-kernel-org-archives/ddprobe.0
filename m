Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE8215A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82BB0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671756087;
	bh=4HqHMdyTTJb8D78Lt3kmbic/OhgtAX5rOOdrksJjpfk=;
	h=To:Subject:From:Date:From;
	b=NA6olm7YUQWtY2NHkaBwU/UOaZWSB8goB5IzLObLvg2Y4PngpeldrGF1f2eBkCCt3
	 2SiWzvGI/4frXTHI7l5QN1WutvSb6usHh4ngsJmi5IKKC62p0y1L4HTPkllJnpxkCy
	 Do0nXnDslzCxeeEeN5ShpkfGQ/6YZsLi7+EgG1l3YKYLX74j9F+PuJ55nmJuM9Aha3
	 puQpk+vMrSP8fkKR67+SvydKVgAMBTvB2afZcrZHm3bdsar8NbP8FugegkaoEydWfH
	 Urkw9sum4QxRQ913gJyvS5K2bmQCgSOzWfIA+XQLXojUCv+pwhi/rVaRyyPlDaNAGt
	 FPvxWaXe0Q2bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A67C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175608741.22755.13196398147115994660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5ff0efb45f04fd2a2e5f63069e7b5d65bfa19bc3ff7576b0d3c6af175f0ac0
Date: Fri, 23 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671756087
