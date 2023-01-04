Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D9B636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 874E0C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672819287;
	bh=heGj5KydwJ4aRrogX6EelN2aCnWGdwHhv0+26DDJ6is=;
	h=To:Subject:From:Date:From;
	b=pJkaIcy4g1bVUxNcOTBhjqU7LclzTvhaVGeoUA9HbeAwqj9vGi/LLv3VEO21MTkf+
	 FKIusI2wHk1k16IVzOgr5msaTVXCRPdbpVZOpsUT+UMZLKS7VYskCYJay5ENLRBSkd
	 AbWHH3NLE++nbRVJmebrlpVUHLStlcXuG/jxALoegYjBDqrfiTH2Prr+N7gsO0oX/T
	 lN9twgMZmXK9Dm0SiSBheNi1ixFtAVU4vdOYVT0AdDFLg2IG4b/9G9edCtZI+3BERs
	 iwbWLGvYRb3Q8HS52+8eaRS+oQAVZzM5JDR4EWHSwdMp+cX3R1iJvabeOOqBmCZQ94
	 1PyCSPcgeKZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C19AC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281928743.16793.16246076357029113141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75526f80b4304f83a54ffd2731946932bca0d6adf4d421f2a7fc57efc40fc953
Date: Wed, 04 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672819287
