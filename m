Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD8D2E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA4CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688686028;
	bh=1PEIo8NTKT3/zfpukdIV2obGygJW1N0vqkTtBZbngkE=;
	h=To:Subject:From:Date:From;
	b=TMFIZ5gHuCzl8v8olYI3W2+Umeid6pmbmxJeGASOJl6p6Oa/Q+bQvgdoGOvn1LaG+
	 pIp0v+SWMSLjY0VLaYGCjVVg3zgcbQuMlfziUr1VN0/2YdaIvmj6pEnpqrp/sHKlFl
	 Y1V/iTZBDIGk+SlPrL34tJPdxkWfLyEaBWYPUOz7xSeIwiCto9zX2DEn7BJMn8X2w7
	 d1f6Dljvr0hidef3/wfGwdZIe0rQ5wooPvQFcfexnCYyQgOCSFy137U6HOxG5sb1lw
	 o85Q/fCZD3hsSRmKnae+wHBPHd3Gpb/fdJI/SqvevYauDz51qyrUa0tmXJMFc34jJo
	 eRdlZgokRA7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D5EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868602868.17454.9984674982296020547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5945286cf394f2a6d4afc25590192bd20953701c09223054cc8f797af303255f
Date: Thu, 06 Jul 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688686028
