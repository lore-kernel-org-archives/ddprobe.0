Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADBD20F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B78C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664869853;
	bh=uXTuG04sXOdgljSZZVL9aNkCW/lafir06ka1bTz5+o4=;
	h=To:Subject:From:Date:From;
	b=K0T5iePNPTkwKE0uuhnqfluz09/rexrrQfp6Q/l/YMnyR7YPp1kBWzdPXBBi3JauP
	 kFbYG7DhmJAIokotSgCYwLF9RepbtNip3foQu4v7ymKt9raG2XAELZsDHadvqRR1la
	 Zb9N3T+q8qc77QIWG1iAdomIHhxdc/ayrEcVzoj1I3DxSDGBh4xDcIsyD6rDk1hCA7
	 Rc4JPuwiHwrWNaVv4fHIDrg+M6whjkiDbCgeYRbrgRtubrpMhOgz5i6LyoQFOgyW+0
	 7wCgMESvX24hnERkEQBMGm7D00OzCT1zdX31A0jZ/07heFBJmjWSaJ8BUpkftxjJjE
	 WFOzgQN+Y6C+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE75C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486985336.5654.7352556378396656533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f68567bb69a3269cba78acdf8caa529f071e7ac2b4e5a5b6e0d371513abcb5b
Date: Tue, 04 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664869853
