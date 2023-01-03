Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D714F79C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E1FCC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672750887;
	bh=FsFgq4pzmK9IQ9kaZeyHPtJc6PmLP3/5j5UbkBoX1t4=;
	h=To:Subject:From:Date:From;
	b=hc74vKmTxg/V/MD09exgyzWiOl2wzFLloKkxoGcRn1hfWjuucG8wqUs5wDGYIb0Is
	 KV/su3MkccRAjP+G51I806eRLbqneoet+5EUHc5GQYKBVRGArkmXE1//NNtU4ggLcz
	 utFHmChWsfJbswm/kheGxsvEv34OpqNuwM9k+rPxcrmSt9IN6Qt6jKJErdzGIL13Tw
	 WxsbUNENA3hCy8w/byBZ+RrCx7Lp0pWBHciw2C3g+kTC0jVa8kFmkTaPV/fy0uHRFd
	 UlerB09eNr/Q2rOWOKr7t4CEX3w3sDWyy06jqRymeOcAiW7lItelOSnicuBBdAe+60
	 Gc9kd5hndxYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC4CC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275088743.9262.5380180271865264127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8956b3df6b62dba18d1f9a1a54e9f8295a7a0e3e9a7ccde3281128e8c9da3589
Date: Tue, 03 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672750887
