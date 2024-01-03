Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F674A0E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBhOZ36T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFD3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704242296;
	bh=kFVUmrbM0OabQzvTv6UzE3wpfRoZHE6LdX/yPSn38SI=;
	h=To:Subject:From:Date:From;
	b=jBhOZ36Tg48++4eOmiaLTNt3RwEWlEYcNPoJBn1dB+7Fv9At3lkfEgyrszpSBbTBp
	 eH4HaXawudKcAN22Rq+Fsmuj6/POSLxqIn+wSu6GpDT9ke01nviw+oBmDRjL3llieD
	 G4P0mPhbWGikWiH6n55Te6Lhw5RJ+lrug2ju9MXn/yXsiH1jOS2BQtoWBrZnIXwmEo
	 S8Cn8OBHZOuiHqVjgKGNb2KUMGtPd9O8Fon4IyFxJLPycSSKlQ5kWsnmOveSWQcal1
	 X5h2KfdqsxgAlFSpaLPSWSWCEE4BynrM09sP39csptpTVVP//TSxdaZ8q8aBisZ4IR
	 nDHL6oHHIXS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79177C46CD2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170424229642.13622.12008263530298772026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12bdee8cce1244b5686c243e9a9081245b3919e0c6592feaba04f632929d0f2
Date: Wed, 03 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704242296
