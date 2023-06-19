Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E1B14262
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A2BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687195929;
	bh=AKFHZhANqZvsP6C1lnju28yhDRAKOcImVqKpdlgb1jY=;
	h=To:Subject:From:Date:From;
	b=I67PlRHKvntoIGk2agFYmaAs/6iXAwR+R3NIUw/yZ68Ys67YQDo95+7o/JHVd/Z4D
	 R2MLrXPlgBYECBEn63edq//5I4JYVSrOI62gqZCQqIjeog/qZaGugoUpre71umXZTE
	 /ikWFuiPYP11Aekj1Soql2L8L+eLYqu47tNN5eGiqcn28ddh9r0kbAdLaVqbQTaC2p
	 olEavcw0L/puEre/R08Gv09pLdq96BbF+KZnYsW62VkFxX9jfANjHATsVdTTBYNxVr
	 J9ivVMCQprDde9gLedvT9fM9QdPIA88o7+JLC63SKANUNH2C/0kvnYhx+KrDCYjkkB
	 Dxb44X/sHFT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2D3EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719592881.21374.16919717020463133994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab6c5ac4c5d5ac5b99eb31c22f62f71eef98831e93b0d6620bef9931a266328
Date: Mon, 19 Jun 2023 17:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687195928
