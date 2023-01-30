Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564FD3D78
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 18:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07EC1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 18:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675103586;
	bh=OCfQIPEdDQI36veM0wbf07Ur0DEDY9n5Q8gyNicPYbU=;
	h=To:Subject:From:Date:From;
	b=j6dWgNQrWPnrADm61nOHet3Puouei3fIuUTNuie9pGtXTZ448ZMC2D/u0pKGNRe3F
	 uM/IN7grI4lFKOKrgrkRNnOJF2d0z+2lFQJAF9g4OhkIHi92pGDDqB6h7TU5D+b3Zm
	 YDJUPNp8hsNmjH4otVRxdR++nOikWIUbPX0dBVlPXH/xjUtZcpS8sv5JVRJJYkcvGb
	 VFhDSWnPQRrjuphnYBvSpEbm+pQ2jRsBTJiIsEi5d0y/RA0GAUxNf61kwncVxOEPV5
	 0FxPuLRjlQpbIyk9JOf/oQKk4IKLY+EQY6SYU5VTZ3jcAZ7/7YYfSY0QWfatU8NZ20
	 PA4ye+X/ttaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CEBC54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 18:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167510358584.2577.15585950245132494245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c643d011439175dffe960a61e1a2881381161638cd56abdeb434829a37c726fb
Date: Mon, 30 Jan 2023 18:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675103585
