Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0D4370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFB3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665712253;
	bh=4nVVho/e76+lMmjD+ZGY3Ry5wojM9pCS0GqiX6ycBPU=;
	h=To:Subject:From:Date:From;
	b=VGs+AbB5eeFRTlmCBRMET5LYnoD7CUvJWdxG88+3ixqIqYCooj6DEoEAtvqDl1pNj
	 3jUKOn1j6yAKmKPHemdbV0qMB3L/ynMsT7EPp37XIKgitV8ytSMutaL+G6wHHdRT4W
	 uduDn0WJOwb+juQs8v4dhFLd4KWkYAv4ql7ctFaTQ4IBgx9JrBjG71yyVYue6HX34+
	 B7vB/V69IfpTl6WUdby55ok3+cEyQqsotg8JVXKoWw09ewmcDxv6kkpbZ4R3WitUl+
	 3ri+Yyf0npngpLKLOkvv9i2wvaD6APcauqiJh/wUNJFZ+LC3LQTvRiZxwk9HxSVKlP
	 +bANV7P3u2ULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571DEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571225332.5651.15597902505817771775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5609b4b51b109c52f3e076c13008deac861cae048c39514cfd2e0007f675f35e
Date: Fri, 14 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665712253
