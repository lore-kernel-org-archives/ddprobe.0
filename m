Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE75190
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BECC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671121287;
	bh=D5T4A0C+6iqPlFWX2yV2xnuPpueOXJU/UhB3/3o+wGw=;
	h=To:Subject:From:Date:From;
	b=WZwzhqZjjRjlGe6H/tW9pM9r3vqx3kqcXqEd7+BislgPvtVl8nVS7tJsda/vTibIh
	 ULSLoRho1fMxX+FVQCkWbHvMzc5t2bgclamwgIYgsawOYMv9rpECTKTMRIkAXeFnoy
	 rDH6zLwyQTwRlJMSjwEazX2BHj9YnrSxM3y53C4M9daOSJQp70AJlbzPnEujiieLUY
	 vOtC4s+nlU5W19HnPUKPn8BAHCPVWE6ublxGeNoPIpxgDFgbUlqpTEVXaMcUNEz2sh
	 P74D/KplEIxAheDi8eqAR6SiCXx4SUFpif3wY09rkgY4v6gkQDLQckoHRuIZs+e0vn
	 E24v8pozejOBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BEBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112128741.5886.4085614048561441987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023b8b9bd78b2e975add2b7b0f421cceb26337d3f199701a213925a7216bdfe5
Date: Thu, 15 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671121287
