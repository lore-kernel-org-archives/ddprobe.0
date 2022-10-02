Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB84428F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ADEC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664710853;
	bh=DsytmME9dNBCWOx6V0JodEDPLJP0IIuel6/G27ZVIw0=;
	h=To:Subject:From:Date:From;
	b=GfptZmKbNF4eHaddMP89uRLcqOPhfOGYB6mYxR0zzvSNkrc8GGv17LydJvqb0X91E
	 A8L2Wie5nv/XvR8lSNpFmmzpwt5PBVxQELVLLAIGBlOAOMbkF9EbQx/BSZbgFlb/Mi
	 EHs0GEDhLeLFSL8xJnzaTg85i9/9SkWd/feU/AqRhJK7Vggof85jbMJlBCwJnfnywG
	 fFmRp/Y9KumXKtZNm0gqQ+ZV+12F2lzkuZduoZ/LL/BCKhUa7evM2U21WFkMwE6zjB
	 uIUh66MH2+hEJcNmpp+HVokI1GCIhnhEiC4WIkSP1AdSwr+vKrcXmRDROS24TPk12q
	 tRcZSIZK54Hpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55232C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471085332.15980.1659900524688861752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fef9e2e8d356572283e2669f25ba784d654dc59508a2a615817018f92c2792
Date: Sun, 02 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664710853
