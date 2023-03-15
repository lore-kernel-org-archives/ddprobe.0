Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219D9193
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19F3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678920605;
	bh=ZOiLGtxqXrgJy3lBMEe23h2XiyCQEwWY0Mt4JuxZVok=;
	h=To:Subject:From:Date:From;
	b=s3Rf3TjJV1tktI1HeqBwx7OwFkj5/PsnMbJFe9bDAKPcxeemnZOul1EkxWl4b9ioA
	 Nd+MMFEu5Amdo8VRRfJvihoU0kt8T7x0fsxWI5WtmrIy6naRKQAlNXAbaOtlsOm1Ge
	 qw8yr81eurVQfImeR/dCGiLPQGRYVizDQSTcivt03i03eLbQ7hZdMQf3ZVyMoKx3m0
	 1hIrcS7CSO/SmjhiAPZh4dSD30vrIuZYF2UHWF+aOJDm6ZUnp23M/xDMEQfNzUw06K
	 uMcTFM84USH4DbcIGGPZlhW0e16t78cxJZO5O/CCjPexSTrgUQpMIzLu7/3Z2IH8tf
	 JXl6H9Awom68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB197C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167892060575.20851.6692549335918638012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6e6b6bb57fefe5e8cf8ca27986bb8ea0f7774e6b01c5099533bf0c197bd97f
Date: Wed, 15 Mar 2023 22:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678920605
