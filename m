Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C082C441F
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B8BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666468253;
	bh=ZGfSxd4Q4WNBRH81hJ+L2Bln/sO2UThP9kWv2HeiY5w=;
	h=To:Subject:From:Date:From;
	b=QgnfquzBKdAoln8PSaWAh6dhqpvFBw7IK3+sVKZPmX5lpzfDbD4f6YiIwLaAnlpY4
	 XzTyPmpmuf4Fv096MHKI83TRWsBZvcs0RrVJ9D2EVnb9Ewi4E9KAi1ih28pzi57jzl
	 AfQ3tFzh59OqXee5enc8QhvNpBxVulQdYNbJnBCO+3F86XrPMoIr7b6SWLfn9aJXmZ
	 iuMorkMa55vijvYQ8rfOITSFnYGQxD1NdLHjdhNIJloHhlIL2sM2tbqJQ2BMuFeu1I
	 OEvSl3n2fwKsK3dpcgpsBf2M+NRrxNnOlGHbd5VBWFs9cDD5/CYTeJOD69U3vgX27I
	 4IMs2YNC7Rsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56752C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646825333.20885.7009177978125705614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13831e69fa85c8f18cf3562d5cb18575c3a8a08c1279af0e0b425c29f84d29ab
Date: Sat, 22 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666468253
