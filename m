Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074C31C07
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673869887;
	bh=thL5XL28j3Df4N9K+7VQR70g4N8Ah5amLxJwsG4sHLc=;
	h=To:Subject:From:Date:From;
	b=eUfutPB1QDT/ITOeKTd+fNmIre04+hUUZQidJTLIOi33gzjly0+t/wjrLMASVmGny
	 RNgf8kK+IK1oD9JUm/t54mO/Mc6TzrLZaXHaGUPMhSkFwnFzcsaSV1hMMn2BhdGYgK
	 uN5ur0TBkG4FKFU8vDzN/r6qi9ca6TvF/x0BWUu0dnQzgTmlo+K1c8gEA66Xqg9K3F
	 qBXTCtnxIt43lo94Z6YnSoofeKzih2KGTTEqVP2zRUpwpX+DwQiM2jVdPwG8xQQF+y
	 j3jH6Uet0T8NNe8ymqCdyls2nykwVDhtM7AtEBnEgv8sF2e32YqUKdeaBCE8Y2qtJG
	 fUIfbmO4Qx+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89F5AC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386988755.27043.11624324738787880018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d41cf70b33d720d3f72589dadd1716ed40e50ff80fdbdf13a66673fd52e9a00
Date: Mon, 16 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673869887
