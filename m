Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC47D6ADE
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9CCC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670514054;
	bh=MvD7q17pCqBI9as+i4Cb+vpBNRuTlTHCEpK1yoxUfsM=;
	h=To:Subject:From:Date:From;
	b=XonH5AKR/npH/uJo1G9RGeHUt//qoawDpg9nTtGytchI9n82d/tXXDkNv8vsljkYr
	 RgEOA+/590MG74/y32LXvz6iS8B+jH3flsqLpFrCAB2IGaMyAOWfNtmlVomj9VBdiF
	 Hai24AWKDWsQltAjs/aqlwF7zX4OW/SHA57bZc0ZoFe4iPL+ouW89qY4y0qw12p4m7
	 on9wggSaqSK2ex9B37nkF4K7oNeKpdGFcGcnjH+zsLbfmdPS0+xDWaPXCRiQhI+wOf
	 K4NZVUg/r0HYIpOSEi4aZvQFhMMlqcUdZLAKjjv3GxHwtUK9t+M2LEhA6Xyl1zLgWQ
	 Ren02W19Cwxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581D5C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051405435.7025.3730429119307339590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcc245df5ae5c36dbc5eaa8ce4ccfee707a15b2b517f4b9cd9781f889a0b779
Date: Thu, 08 Dec 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670514054
