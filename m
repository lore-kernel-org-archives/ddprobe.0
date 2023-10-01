Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F22D37D
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 01:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5AFC433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 01:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696123568;
	bh=8y2DavRu9tTCETmdg9UhK0oV/xJlKEynFE/ie2FnAVA=;
	h=To:Subject:From:Date:From;
	b=UQi/4QvA7XhrCNuu3QLMvD7F8Ei2yfNq0g1zpQfpV+DuYcEoOg8o5zB3Y1+bn8owQ
	 /jJUqDxJ7vSI8OxyMgWE8HnDHoblZu3WvW6OPS0GvTNQMSaD9cvbXkIMgvo3jSocFX
	 QOb5beIBsAcdMkAdRHpdUg5YfxO5KulfbJCH1xBzDucxnn84DsiPrkgv+AsV1wDMJL
	 yf1UtQGrtelecMOezcbboVh2+JktdEDRzFUaArwZtXAQC3vn8KuYUgVdHd6avRIXvb
	 dkd9WL3EPdsH03x/BPKYt3nB+VHZ6i8A6V1445Pwr0K+P8+Jd4QDqM/gAh3ciLSp1J
	 H001d3GV+A7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4751E748F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 01:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169612356869.11273.13038064730005138584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681c475b8b2418e1d45293c85bb44dc58e578f73d919484088c1c7e7e67cbfcc
Date: Sun, 01 Oct 2023 01:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696123568
