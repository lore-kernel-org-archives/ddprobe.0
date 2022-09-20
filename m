Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC0E748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8F5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663695653;
	bh=h3iRDmpFmJrHffQCj71+d9R0474HuO/Xq0i47ziurLU=;
	h=To:Subject:From:Date:From;
	b=J6QdnFnd4fdqH0uRLBzo5mx0yaUFb54SoGFNg9NsiHrVlUEILk2CVVLoglGdEUU+m
	 KgtESrotmFqMLZYJE1yeELXbiugnN+HmKzJZ+2/9TVWeEVf1ukffXY3ISgXxWF3Y+f
	 p+vywruE0Wtp6rivIh+nsFFswHarr+VzjXv2IV91+/iQOqhEmfczqPwHQwiBe6m6c4
	 2Bg8R82EzZuaxCYOgouwF6Ve7Vtr8S672HLWcm2Kxe2lfipENFOrTvALUFHbmJbMwi
	 3JnUeWjm9afFni15FKjzH/rJLahD5mlNnxmtLjbn94gLtf3+ax8sR5CkHPiF/5SPMV
	 09PZQ83Y9LRbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554C7C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369565334.1432.6593040655773999903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e040fd52e0b5042eb1a52a9576fccd744cb2bfd668bd0ded248497a7305ff8db
Date: Tue, 20 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663695653
