Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466CE79F8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DBDC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690986128;
	bh=guUNCoOaFd8XJagSd9xdlq9FTFoscXUcsu8u4RhrPOI=;
	h=To:Subject:From:Date:From;
	b=JvoOdr1VpCb3cIAhQEUFLm4BMJtW0uUXYlliCgkwlasvA/IEvazcUhRnOShGa/nyL
	 T+oKaOOcyeJm3P4McjFHLDFPZMqjiXOtLmCGVU7yiUX+uK0lpgZhtzWxE9WHsSeHAY
	 oaC8QwBLytPCjsQwlczLxB7DXTWZigYxAWpoDsDwaDr/rDJKn4vGv6l9ZqjiPNJ72+
	 rkjlpBBAOn7QZ+Q+6ER69gTQZuuHhOILdFaBAocPicKX2fJMDb+k178PzaZV6dzSLk
	 h4oiYTLRymvOJa1tgsoOvrOqL07FOCstn/KJ3hIXX239ZXCPipn4X22OnuLnPYEE2s
	 ju702P8zd71Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8869C001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098612868.15911.7081452424300654253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06a20a94f0ddb532504bc62541bd2510f6f56ebfad97f1c3b3c6ae0143f4a3c
Date: Wed, 02 Aug 2023 14:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690986128
