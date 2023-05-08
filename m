Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD233E3
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45CDC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683533285;
	bh=WcVE9Ub0GqIQxOtdhm/52aKz6Qxcvla713SXf8C159E=;
	h=To:Subject:From:Date:From;
	b=MLhZl+DP1lOl0s9fXL2dnAJfUiD8nPX04Wt8wlGilb5Z0bSdOKqkZzI8yZmroe1Hr
	 vF0sQjjByBWmDn7S1+Mhhy/V8/1TQsJZbQM35hFPFHJgLD2nQEtYrbB10QvAPIKdzw
	 68NJ2Onc/NDOPn/H1Mil6Y5Q18+UbcFaJMiAGN9Ox15hKGheuc8jqpbGDQ546J1HHc
	 2j3FNFjR6zHDnmMQ3tbgmFfmcQwbDC2+eiYQ3Qjj0r0XO6WUWluQthsALmD52S8POo
	 b+ia+5wsKXiO1OAxRCbt4zmJLP4lR+c77FgfcsjNCEvklEraysLdIxskLTamcNKLhJ
	 TZ938urpJjtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E36C77B73
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168353328573.5333.15271367120337511139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b59ee1b32f2364f47fb2e5fab75fefdb2348049c15f89bb9742f81a00d79981
Date: Mon, 08 May 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683533285
