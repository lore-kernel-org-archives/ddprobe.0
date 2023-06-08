Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9F6D2FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9602C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686236585;
	bh=TKSNjzX8HL6k/FImDMhD6SL2BmDw80g2WFUN9w95o0E=;
	h=To:Subject:From:Date:From;
	b=pnFYhw1m9ct7jOEKNPG4qpyv7d9w71H4WKKaRLQGilBShJn6l/nccjA97YApXwc2G
	 ccEjiW28tKx1DRu1r15ai58duwYkpe14R0Wup7y2igARBCGi0+mlfCpVms3YT8I5Ji
	 nep5o05KsdijsvEIrRe1Ha6IhHBG7p/NPOp8FQwK9sQ06l54BDY37P207M9ujEEmoh
	 iwy3fmah5znt/ZANgnQt9ov54uo7yMAuSG2QbbdQOlEPLMpLj1QGzGJoMD35LmIQjC
	 6UBtGCIDzMdLUXQsH6UeJLdnjJtGTV5Y+9XmWbHc1wxGetdN1xlu34bBaPWueXQMSN
	 cfPTW0NJ8gHlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8B8C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168623658577.2335.13957370181571552787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3b6e940262fe25dc44de9f9fd5da3cd59ecaa15b7a79433a1e8f158bbef159
Date: Thu, 08 Jun 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686236585
