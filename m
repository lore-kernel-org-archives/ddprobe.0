Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FEE6FA0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C14C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673889087;
	bh=xswhhlgFE3Bf8QUuVZCTe1EahsbeUDuZGYfrz8Wghos=;
	h=To:Subject:From:Date:From;
	b=NehslhH+cDVl6owMof1rcpfCNLlGSwKNoENDUSxnegilqzbbZycWfpN+TnTrMOmc7
	 D+42utchMDWCdymDf75Ip1PwT9kom2AQEwjy0cceTkv13cfRZuk3iYbpQbni3LM/7O
	 TgH3xpKNsvhyq+cj4Bn3OkL5oVXTHlAxm6wbkC1WLL6nepxDUR3lutHUovzTyEgk3P
	 qqJFZbcVObzwrBd0LqM3jCkfq6E1xTGyfhQDwPNPBJjOy+f5a0C9Um+vD1bBA2ekS0
	 uHYB5qXls0+7RiqVqYaWcrVxWO3FV04fakaT3HgNbh9bWIp4+bIGpRSKki8bPbgyRU
	 Oq+lYGJqhYl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635ADC677F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388908739.14307.18106115315397521656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240cb7bd872aa2eaf73beb85d0d64b3f9d1039b92fb4c7eb9397825060676c5c
Date: Mon, 16 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673889087
