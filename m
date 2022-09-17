Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63C81378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73016C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663413053;
	bh=0Anui+yUZC4RrpnwSgVr1KKas1ZQz3T3xa5NWRo/vZc=;
	h=To:Subject:From:Date:From;
	b=pk7vPb/X3dCfMlXr3XT4y3ImFF7V7DrCblmkbh40ISRNHhvkizqrQpBsyzqntqPeE
	 xg2Ddgsd9/oMGVxNtpIR9Yff7EYzDnFI1JrklkmekRbccMO6Y6XfL1VXKBO0MdFf+O
	 2hqOSyVI0d/2YAxtJheFWStWoQK+VLE9jhsmYaX9NtkbEtPKKtvS1uJXq9qVZv/EHB
	 5fUZQwbXQlxNkz5++ujhMRREX5RRSq95YZtVFCfYWAqRXJsngn5hjT2LI8VZ6jj+hV
	 9FlsmGkWemJZwTLA3qkWFZDDLUPxg2IkL8nW3gT1RWRhbTO+ZO6wmc8Echri1X7v1o
	 MCq/ur3OSsmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5996DECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341305333.14716.14872195763865825000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51647c2001fcf40a7c3af361ee825befc24a363e424a910c9e3b4769beac4d8b
Date: Sat, 17 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663413053
