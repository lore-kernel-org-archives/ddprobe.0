Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D409DAD56
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81687C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667600454;
	bh=n3rxwvr8HTmUKAjiZOTDirOdqrwUKCiJEWKblaxREpw=;
	h=To:Subject:From:Date:From;
	b=mAbpVM4uhEYh+hSyFfilH/e64hN6nFXm7Woako2GSvdZ7FZ8f1GejihZNFy+IiH1b
	 40AK7d3yX9pxGpz4ZdQXSJruh8Q+Vvg7QS6Or0iaAbPmuTKTR0XkrrALYLLHFnVoq1
	 N5cll/zuT5Cr0BJ+zhhkoxnDmYqPv7Ak6Tay26v3e8DL+T+D8YC3woXv1PIXYb2I9w
	 fazPokYQLQ14jbpB3T7fwQiheO9wzq0iMKgOUgWVKoUbOPhsUU4B23hjLtbarWP7f0
	 F9wV/JW6C7v8rgMfnigYUGJXONSJfRRWxU2WPyBbexHfSEG8TfCCh4sDUCeiLMcxa1
	 LzBlxMYHI5ceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68352C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760045439.2547.12032093695070733313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51afbcf8ac50142e5c2312be4bd29938db18016e8cf57a356433adcdf0123a8a
Date: Fri, 04 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667600454
