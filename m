Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322D10EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC36CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679217905;
	bh=dEkco5UxLjTmO+H+IUXCGkyzAXuh3yJ54rzxTBjq3d4=;
	h=To:Subject:From:Date:From;
	b=IpP1DEDMmS7Qfu6rQm2+DJlnPLjoHJR0qlB+jpoUfwdUPTXtt29ASFi2mGZNUoH2A
	 SJ01dqzuZGidqCCOTyq3h45M8v990DWktsluE0LrcPoguZs35SQCvnguun7EDQpJdV
	 JYv5/Tiad2B4kDCfEIguTxl6/l/ZaiYBmYIt1dhjY4maNxLV8+r1+KxL+dWYS7J5Wd
	 /vxZreJoeqc9S2V+Xb+prXrHNF9b0butRngns19QacAiR3S2N46yAyr/jym38MljDr
	 BXR/tPkQvUqnzYn3zJsYh1C+FyciqIXf993vvsARgo3hxaSY5R/pxQnMgPvm2r/Wu3
	 c8cfqgbqVjZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9675C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167921790574.583.3324558828814658461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166f4b01b74f2be58c866f1cb04e3683946521a0122bdadf881759bffc1fd917
Date: Sun, 19 Mar 2023 09:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679217905
