Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A0C746B
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FB8C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669911654;
	bh=RQGxYGlAitUN8FaDCMyZMrRLz9Vw3G+niU1RfIVFFlE=;
	h=To:Subject:From:Date:From;
	b=WH4JMkeOYyuxtT1OOwEWFC0+XjHvHhooUW6tDhDkr4C+HhDlnJOeANah8X1+1tbY5
	 1tJ1x6u3kcqZi1RMVa8w4TDrIez4QPva/DcGaxRDbXQRzYu9azPjludFshQlIsRr1Y
	 q56xQyMj1y2SnZ/etCJHuCgmI5AzR6F5iZNDJ0DVFti3DEEbivf5C6Ijphh1rZCbRC
	 QQkWAgwWuQzQy9Jatw/8I/jlzJF1Jl291Sz9WuE8ugjxfxa1HdCdwg60/XrxOje+7b
	 UaXIR7XuuZOUbMFUXJ0EaGSwfaWis+RIZPD94nJlyPuPhfZSDW8XW4kQ/7LFBk+sTA
	 +OyCGW7DKPNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A30C47088
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991165434.6001.13724923910031967545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717cc847df7136f73049ab8d093c81309eb9a0fbfc98bdc0cac8fbb679f65b9e
Date: Thu, 01 Dec 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669911654
