Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C069D8BE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76528C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667923854;
	bh=MCeFuHC9n+x5SE86nuvdoIjjP9J9Q7qC7l9sDG8ikRU=;
	h=To:Subject:From:Date:From;
	b=pnpQIHOIjH27g+NwhoaQl8X0lOqqVKCIqybfJ9eiOJS7isLmDa5QBn6OGA5AkkDYv
	 XG8biuGMsdMKKXovTS9IduF5yydVO8uaB0KcNCB5MJ/HuRjMHkRxpZ8SRoJDpTPqGO
	 oDApaFUiWSv01YVsrgnsBS+lphxDQ1tJ+aJ0wv8Nag0NqspcZ69XaZNqQ36wKx3Zvh
	 9oHYilH9e9zjUHsg7zjQ8Go5lVGV7BYZlpTnB4DgZ46Z9pP9t8iW7SHvLqA/G54D1F
	 akxa0j1nJMjNRS1e7rPSdwyK5169yC63K1xCOJTt0PTcTPas8/bFwPA8qgSL+jUIOg
	 L0/psBwthTQ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CAEC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792385435.14290.9346736258044600420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c9db30d5303fca13b44029d14f6bb4fa935c5494717f82700d91c82122ef4e
Date: Tue, 08 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667923854
