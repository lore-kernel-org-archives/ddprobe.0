Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC34C1110
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C84BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672339887;
	bh=a2FTt1xaLUwltecfh3zhnSdKwYJXb9NLqnaFFUqxzNg=;
	h=To:Subject:From:Date:From;
	b=azzo0+XfhVeIS86LzTFcl6iPlkeZSAX8gTYsSRFJRmI6YV3oM48iRmKXh0OfF2WZg
	 +qRARvPcjGrvpzlheR0BHHVyDq55UQKjVr/6duSW1ss5RPgbgoWF038uFWQIfcnXLU
	 cYmJ/hF8TKFYEDNLQkKnzmTvg4xd94NG1ej6g22eMjbq6j5Qfn9KiZAB1HLfr2slzE
	 SbBUnJjiQZgUMlcdoKew5/wkZ2d7gwBAUwxVVWwi6niW/mOBw1Dcrup2mQibtRlRnS
	 JwU6dVcusE+rGxi8w8n7eZsF4HD+xVG2rgHruM0coK6+qPank80X+GUfxoxOs+0P48
	 bO0TIIqCCjRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E075C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233988737.31260.11595518614999078933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86eb326b07992e5101bbbe7d221d86b24c792abaea5279f8c0ce41cf88e24d37
Date: Thu, 29 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672339887
