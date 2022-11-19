Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C0F2CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EF7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668870054;
	bh=NW/fLSK7NQhM9jFztOvLh3k44Q+qZyP2B/CtqcGkV3g=;
	h=To:Subject:From:Date:From;
	b=fMF9AZ88kiWFslEDo0yHUd2cwh/9Vd3CRTI5QJh8iCxxuBBO9ViKnsiBU2mrmQcEA
	 JC0VaEyGTtaqL8sHiBei3OQm4PkP4nyay0DveeLOn52PzaP1q2MrW+FoDIpnt/3VAG
	 +WJSDPhzT1XdaCCBp3nLCCjl4JKIVQXmBUDe85geyQP0XCPoT+/a4kp+vnLzUv9miR
	 okQbHBk7MnqCP0p6Vfox+H9YZhFoM2GynXMXi3kC8t2Da7rf3+1bDLJ65vDrLhHRbr
	 2wf6VCT8HdZTxUg7uRkBZx0MGgjDLRy1H7uZrKlfwBeYMOzp/SR1pXI72ZOiRIx7ix
	 Qqp64dsjhUqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C635C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887005434.24122.5446309557729707531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ece42ecfe1811e47712657f80e6a992568017529ef23aadb416f19965cc8a7
Date: Sat, 19 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668870054
