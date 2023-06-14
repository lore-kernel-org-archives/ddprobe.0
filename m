Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9204F101D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3079C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686758829;
	bh=P4H3BvVgaW5GEksyC2SPZhR4yRT9tcOR6mRAi+bUCHY=;
	h=To:Subject:From:Date:From;
	b=LhMOSaagp6OHmS2avFpxYTXxGF/GugodnZdFqBBx3xWzbpdzTHtKf1RFsbYTPIYck
	 gBIMEPyU1xxoBBo1sGqDOzq/kETwhBoltLvAnOV6aJHQyMlta1cOM7DoBiOU+WY/Dx
	 /TfHbQpXtng2uoNXfsui/+0BhCKB4rFt6+1hQPJMJJT9WSISqZAvpemFcruzKcSVsO
	 j3yyeX2wsyvQnyIroMLXpSKyAWyRxJu7nV21wjybAekqZ3GBRKGw8yGELUoditQLEy
	 gNHR+sNy2XAUyCMffcqrNYLiex63/Tam7GhaGtAGcuZQo8yIe9rtpKzB5+A+tZaL65
	 XX7NfKAI02S2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98F4EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675882875.11455.6760898400830326755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10410e5436ea112bd2f20808e2532054692b781d99a961fb678e001c05e90193
Date: Wed, 14 Jun 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686758828
