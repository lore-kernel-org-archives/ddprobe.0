Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16F33D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF19DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682607725;
	bh=JWy81NXjXWdTjQcjM8QEIvxQMLBA7UacA3tlGgADnbs=;
	h=To:Subject:From:Date:From;
	b=P4HLyINwmhDt9HSkcb4GPQa/GBKU5byf/hHvAEQ/7Lw2A/GTY+FnzNgttmEG6/Mj6
	 eMOIRBB+EWSraJZdi1JAQwG51idL5U+AhdrRu2gU1uFhOaJ2qvOlYsAFrEN7/x8ryy
	 rnEqLqi5eBxaTlqpSRbBOB1vJa9YaEK+MJuSb2eRjtb8XphzETgXFGFivyLDewaoW7
	 khQ9t5q1JdfMzEIcN1gXos6/LjRKa5qpA5JN0oIyifaRDh/dftFX7N29uapWWgnr7G
	 MUCkD+iR78R+GCnZPPsGKXPeiSgxDW7BYDVPWwtwmXqElHVwoeSrsAupxC+FFfcuhw
	 ccGtsY74mT4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43D0C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168260772578.9004.7030780818387326254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb570281cfac9ceeadb3773b48a5034d46ec4cbd04549bd0050b7e4994fc6694
Date: Thu, 27 Apr 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682607725
