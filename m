Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1C2E56C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10B2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692344048;
	bh=I+IEiY2Laiu874n/01LLlHgOxC1hL3JB7oD8uYw+qYw=;
	h=To:Subject:From:Date:From;
	b=ImVBMu1Ry/WUU2ktkLV1mwnzogGAcr5iCdX8rjkpvk3OJqj05NMLEC6KLhGd9A+fb
	 OkkPD5sN3RIjVyCqUq8foHKQD/zZdKHSChClMaXtVe1aqJAP6DtEdNQ44tgjnwW/37
	 U7FISx7DIRrq37rMtV0JCs0FLThhSkUmAxQDcfxUFK7pbAAMAl3ThrBJGenOhzeBHo
	 3+BIyv/YIklvt6+wJxnyk8ADjZtgjZRDHgotziPktws/chvolluvdjV6KydK9az1f9
	 VWas4GA+gAXprabXm8VrGbX1Fjho/NaH+VHU3BV0SujhjjuiBM/Xq5wLdVAZD2iNDU
	 1tNQUr9U83dQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE35CC05052
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169234404870.20911.5061515654304616281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9178084af02b602c10bda88165a128ccb7e66ff6aa7913be3a30330bfcd6717
Date: Fri, 18 Aug 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692344048
