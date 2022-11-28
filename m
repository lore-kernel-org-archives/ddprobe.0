Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34B9362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DF8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669612254;
	bh=ot+gj6DMSGGSxI3TjM3WiuMA7O+gKLK4+jNkGPjBprM=;
	h=To:Subject:From:Date:From;
	b=ifAHCtsC0apjI4i8rklBLOIaln7a/6JqDDqJn9kyhzJc19i61WKzKc1UP3SlZddSZ
	 e+GO3g44t8ycSefFPkpAll83+ehTdfbwm9XhO/2jQK75Alt56Lm/3hsmiNjv6EUQ9E
	 hKYIJM/PsPZ3RynUEcdftcEEpnSQ+WXNRZ4YKPPpA1mlQERJXPrw3PTGkm3cNC5iUP
	 PaTeXepQogmpPBpr2u6mS4lSbuMehBBBt8oET1hZD27O5oDRJRU0Z6knE3a7+4FraE
	 BRo8Z8F07sVgM1ui8OkhVvW+nQvAr9CpVXt37JbN2rB0DbsEpD+m51efimBXPTAOb8
	 dNbk7l6pYhmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6052AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961225436.4982.9735528642989791388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb62637643527749ba28e7d488354f2d083db595657c85c4ce86f17973fdc4ad
Date: Mon, 28 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669612254
