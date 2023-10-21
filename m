Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A0D2FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzfsmCPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82AAAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697889496;
	bh=rzomVeYa1jewf7Bt8b25BDfVhUsNiVzjre4x+R+D2kM=;
	h=To:Subject:From:Date:From;
	b=pzfsmCPbu+nIG0RLkPQ9bdX7WoaQTYNj0QIlu++Nf80RF2k8h9uQl++nHoVVk0+HT
	 z84aesFP6eRXfc0CVwXbpH38lXDwbQ+J3jbSQK1hGF4LmpAWA41YBZIk0w7Z+z7+RH
	 lSNtZnIvLmZsBZPXhSW04aq2aWPvZxp2opgZA0TZZf57/4KbcVP9f+7e1UDJJ9adHH
	 rR73WXhScB4byt7bkNUzm5nHro26vUD8tV2WTFgDdyBJdXGofnK++LN5eUj2/zOWAr
	 k2mitneS1JUCqeJ149a81WXBRj85ayIHOV4vqLV4cCkFfa3/Qgzd6ZadTe7Mysgc00
	 w6qT4vv31CZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EEDC0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788949640.16222.15102156972982500126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa72338ea96434e8f4cd66f4512cce861dab0a45fb48315aa114847eecaf18a
Date: Sat, 21 Oct 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697889496
