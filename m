Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E3F2565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674814385;
	bh=2rsjbzEdrv8CLYXaG2UFbpRECb8NxrIK4fP6d36d2Hw=;
	h=To:Subject:From:Date:From;
	b=WWUOD31WTvqzyRTCH7tlLUlSJ/5Glv3bGY1op6pi2rC2ed2yLPaYSReov6DL3fXyX
	 zmNRkXMeQrSfBgKkSXfADghfn7stZZ34LuL8Ia64TNdnErhEoKjuGvSiG27AxrEI7V
	 SnQlS/xLfavk1l95trd2HRkTUQaKoC7OWXXmnM6aVP2aHmUec9sVRhXRBvdDchip/h
	 4KIbOCPZndMYF353dlEA4m28F/3Sie36SBCs1AEm1yeSRd+2adLbAh8A7KcfltTCgd
	 n6Zuv2FFDZcG9YgurmG5/KVU7fqm4rDgJnoKeSt0GXAy0dcgRp+S75vhdqdwF11WBR
	 gsKyBDZ3TE2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7571C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481438574.13134.961334185162892712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f0204fc0ccd9be2ae5550ba7a39d9a316f4a0a1d196eb50b999e4f3db39b47
Date: Fri, 27 Jan 2023 10:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674814385
