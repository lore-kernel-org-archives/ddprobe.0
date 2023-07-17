Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7E310E7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 17:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73F8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 17:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689613268;
	bh=MOw1B1OqM00Kh+LK/VCCy7sp3ZteN2kX53aA11HwoX8=;
	h=To:Subject:From:Date:From;
	b=bvfxtamJ04BoP7+pZt5pU+Wi7HmD1S+CrRHUjWAW8npM+ncAPUZL0JIdo0Q9XmXFE
	 83FRmfvIoSLp6hnjp15nEY7I4nyj5nPS/Mr/f/hId2UMupNFk11oQf4Ogvfvg8nR7Q
	 TEjlumu+Uu2cr7pghppCQc7w8qQaELYOAMHfv3Lqo8wXLef0aTxf4u1zEFR2408rLE
	 TKdv86jlp4GunHvlsPHn2jhrNr4aREQFsH9w1rv+gtGvrbJg19FgjJM8+Zc14RVjC/
	 OQo/AAd7x8cF+G/RnCABrW/gKeyCxEu+mgIzHNq9ctu3durv7TvmNPHgJkf+Szu8ia
	 28EngQXz9nIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC033EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 17:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168961326869.7651.16634696962618305307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4559f45921daa6fe39d4109e901be80dd3a7f5c76baff3b5fe643bc42adbf40b
Date: Mon, 17 Jul 2023 17:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689613268
