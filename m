Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2DA7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C87CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666679453;
	bh=5NJufbK+fij9u32tXjOG/uLXCOTEMDacYU+GwKb7L8g=;
	h=To:Subject:From:Date:From;
	b=aKVmn9PHosjTu0NDyaAVrnIlze96rOg0mTTVDo7+L2OWZwLv2clwlidfZhqvan9vm
	 2l8rJ0BIoN0rd4K3Id+XF1K32V/YG05fBljya5ydF7l0XCbxxkbwM3pQpZe4PIleSX
	 nZj2F0cnvDHo1Ophifbi8CNql7QXidU+yd/Sud9nd2wJq3cm9+GOPwcvig61zNwLvi
	 reQd1eAXeSpaMRMGWRnhTZBB2r19xgauPYiWqDfl4JpLt0tSO3qd8cB1nTySUj1fRb
	 LnZkGU5Nuiy6PG73/81DPE6pMURVmQjyDi+wQzvD9mU+2ynN3zKgy6fxLnCP7uz4PF
	 vQ6kSBWKXYb+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528B3C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667945332.28967.2332750418515434720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cf8f698e1a75c35e5cea866e1f75c2e50b3e24ecc1b5f2a98f5912f8ccdceb
Date: Tue, 25 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666679453
