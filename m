Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BB28BE1
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE12DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681170726;
	bh=CVzcsufwY8iDcarrfIgr7WyMHFWzizv9pUbKr7c8AkM=;
	h=To:Subject:From:Date:From;
	b=GNOOIeVv0fiTbsKCoeuZVXqMZHEznTF9XlgBm5MFVySCGheQngdss1vMbvewgZSG3
	 h383AtiNCbyiqq+yTBzyfxDNPXXuzdaextJkHVCBOTiD6XVllslhsTrLFH8CNOypCd
	 GECeCHlDm0jQkpRAUU+FU6/MnWXbByR/6FzBXbI76oXNoFF00N5jyUfes4uFzSXkqs
	 3F2Q/ObuLv38Zk8QkSdlI2yItdJbEov8Ju0jMMVvjzWiwAZGzUohcBSM88wT3v0srt
	 vA0Jn76Q4v0cMl05HOUQjq+pKj05YBXB6QOKVeMndA6Vy4lbo5Npg4yH8hRl6pxgGY
	 vCel96x7qHQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F27C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168117072578.12176.8845044439833237871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a37afcb549604c7d3b8336f5ceba7258a1ef69654573e12b6d6538e99c077d4
Date: Mon, 10 Apr 2023 23:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681170725
