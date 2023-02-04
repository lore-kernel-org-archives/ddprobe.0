Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365401867
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D633EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675487165;
	bh=DLCa3wZrRBBMtZ+hp0J3g5odAGzwAMDv60HrjF7yBhI=;
	h=To:Subject:From:Date:From;
	b=N6wm0/MuBF68YQ+YZRQwghd3suzmgG5WgibZZsxn9rdBo4pOhJRXCoHAh/ME6IXik
	 MHiq7kDz7lpsP7KNTLWxu6SaQbjKHSBwCE34AyxpSq21vgINOed2YGI5nw2ww2qw0F
	 TgyoTsttXKdeNXiZqFY4LSec6AcwPAhZpHMi+m7hHoCCEVFaf2CfEOt+JiPU2BOuJW
	 9XRtYprSj4dX96cKVR3mx6uJqOMHpVBBdrQcWczbvSxm+MKfcTecOkWvw42I9ESFrc
	 n8hoIzoJTJR5Cc6MVY43Z6eXP+ALSRJa2kHPRqQ+f4i+SiIKWIFEX0XH9I2lL7QtVy
	 WunpUOfomjMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AA1C636D3
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167548716573.6716.11322794547953116468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ef57b166115464a9c67ea52bb9f9bc3bf2eb1dfa8dc69580981d5342f09bf3
Date: Sat, 04 Feb 2023 05:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675487165
