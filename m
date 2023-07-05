Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C1C8E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6248C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688582228;
	bh=FSqybENy1D3UBfIFjPWk2j9yRWEX7rsCyyo2wWDkE84=;
	h=To:Subject:From:Date:From;
	b=TsY8q/kyDZh5COeU1QGlTT7KGXSEdMEtwWIf8VACvDQR2Ug3ZkjC9+jl6M0hFkrax
	 /JoLMzd/41hVgG9vFHkDc2B2ZaD+JzaidyeSUWNwkoibvsc9cj/IK0ZqWl9xZzutH9
	 fXfou8Pyv4UcXNd2qyQTEWIdYFIz6pyjLmtQSPrdiNiE4oZdKGWnJC+NqRZ8OiqcI2
	 OfgZACOTCF057D5KpqjbUvDE9CrfMFF3y/Qf/D2CQAaMwy4Ac0Fc14poAVo1SWbQuD
	 m8+VrwHJO5vRvUsvzCqAfpmBSwnWSWIgdXC8AW4fbT0tRAhZ62sDhn6wzZVzULhAFq
	 I4vTFRLDhJFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38C0EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858222872.10985.13270820176419689803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23627a802974b10238846775b5f9c0f899a78bf3f7e4d625e17a7a2627b5382
Date: Wed, 05 Jul 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688582228
