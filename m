Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8CB1C04
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B4EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666135253;
	bh=LLMwUcvxZsB7szjXLIh2pYrRmxLRSAWDd/mmVNO7UBU=;
	h=To:Subject:From:Date:From;
	b=TOFgV0htZABVahtQxkCyk/YqkYynNF8qyAzoCdaoO+YEt/4SWOcIsq6NpFrg6H7ZC
	 JTSSFn+e6qbzxjdf1ndFKtIRwimRYp2YbIh6CespVa0TiXlmzBG57M/Ta6dNrQ5CRA
	 RdxjKAT6INk+IwdnaenTyocE7T/NgXSZWaHhdKNPKBlHWct3mPHnZrRCte/atOsxDu
	 PdxPvTKJFpEPfYA+n/G44yaNuH3yYUOXu0dfrq8Evr2vV7I1zYI6XzF9Kw6Mt8dGbl
	 uxBDfEyTPV8yNS4u8cnmqZZCMX+ysD7OKvYkcGiIlwpK6uvFY4Eg77zjjGeGvktcxy
	 9G8JNxhtFSegw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F88C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613525333.4973.324705382224294294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c88faac8c911e2f0011033f8ef4f8fe962a3583d42a465e58dda7e1b80a03f
Date: Tue, 18 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666135253
