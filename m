Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812977F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 08:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01112C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686730629;
	bh=PgvpIh2lAzg3cTm9SCieHmlog8+fkN1P1bP/IIMsGqA=;
	h=To:Subject:From:Date:From;
	b=Kj+Yhaz9q7gLDjJReDkj4ICUyf0M6mR3eeFd27je/9DtIXZ6N+4LmIFEyzb2LfJS2
	 WD36Z00hs/lpR4MzdEL7PDTW8IsL/ojHcJifCQltCS0oJwXrH0PMMV0Mu8EVoI2SUG
	 OhXgBbMxhWq9m0D0RHvp3kGdImXk6fSu8ZEsY5dlnpv6dnRpm30ds+RinVfaMbnNGo
	 f7Mx0d9bARRIjIesz4Cy3xhiTIG3nUOmnaeYthjviX6dlzHNcoLyy0Jzt8sRR4VVa5
	 vcCYejjjeCbD4Ou5Dbe5toTnXJ+O8YFYxAjMOr+FS6OGAjg3P3c/79spfmhGDnsOYb
	 3Ns1vbFUbWciA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3728EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168673062885.12675.6799548698426389334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079cdc4664cd70dfde69417421250d70592068058797d5349849dd3c6a70c8a5
Date: Wed, 14 Jun 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686730628
