Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250563B5
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 09:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7330C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691572388;
	bh=4qL+lC/5aiLDKi56AtVTmpW3+dBWJzohmTawQoaKcaQ=;
	h=To:Subject:From:Date:From;
	b=A7iATFSUTH6P0jI1G9xC1FQmZcGuFwyE7My2PkkRWoHDtNj9H8HLPCyDjHwyUhOot
	 nwvoe9dFZB8CqhTn3thXst3vxK88nmUBENgrs1vXhSkAgm4tu34Ifg7k6IpSrQYwtc
	 5khOOrU+H4pFEoHc1E8J4hUGKdrCukRoTRmhA5Hq8Jtdp5jBhZlHQH/LD8pcHbJitW
	 gPtngypbZiyCuBZQwTcqGpjKdF3ms2j0Es7rlphKnTGdK8MghdmCrxxCU2LPSF9X+X
	 BbUVfnnBXGWQUDbLMubN4MjjMvtOS23LEZXC0cL0/FQ1MiodbgySFimfzs8BHi09ui
	 +XAiOFkRYWGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE2EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169157238868.7783.5066677995048584777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e2f75be1562163a86cb9224e6071878395dead9d7036c76441784c91b91a2f
Date: Wed, 09 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691572388
