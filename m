Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2AA17D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3FDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666339253;
	bh=3YelfGec/yTb0nsBYkuw5EeB3dqKJbC0wkxE2hi3HkY=;
	h=To:Subject:From:Date:From;
	b=liE3oKTzcwCyGOSxG/tf7wahUxnFcn+ief9mA2PRkxER1Yzs0WXs6sKVymhK3sqwi
	 ZID0vKFjMTANXy5mb56/kruh4fOlfPj+WAKCxkxueKFCaotBij7BCiqJDRJ+1FnUsC
	 d8BJ4EpsOJxVEILa3guRulGh0mGf+ESswE9O/DXUH4CMza0SpsueHby5NLIpbgDzk9
	 1E5VyBctjM1xevTEv2DYUQBWrbctSHw3APov42rKcSiYD9JoJEBQqZPU/enGtNisMV
	 y9lItr+QqUDdiRX/HVlz2eZwL5Gl68kEoN+ZDyxRrjGwIjhVbiZ1c3hKUKlOYqVsZg
	 HLz7YgyRDrLug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5029AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633925332.8493.12454274650540186390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b09877e26d1c462ad68d24c3e974851e42858ab4e682ebd8e338e2d83a1886b
Date: Fri, 21 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666339253
