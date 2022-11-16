Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3957C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 681E4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668601254;
	bh=m5CdSQ5tqEhDsCaehY5VUj/85cFvu2zzF0HZaU1gfRA=;
	h=To:Subject:From:Date:From;
	b=ealrEbA00X9dBbXar/7pu2zadssz/++bvUDHD5xMourK3Q5MC91GcqdiuQJW7y/v8
	 tvsflQNHVlG+gJFOOI2a1lCh8INPEejBfWuM9e4FBcGv9bmnmfy4jEZxJMehN8tP48
	 y6bPZXgpIGyU+F3VIAkk+zd3WROcA5o2rFeHfqREHliRTioRr8fe4uuZzAml2Q7vQv
	 9YBX4dCw9/faOimW6a44/morfvOi9zAZupjEddOQyUu74UasTzfh2yNG5/VWB7eZmX
	 dB/KqC5IUZeSVmpU5I5WgKIn0X/bMEhMzRdhSdknEJN0yvGKRVnYBjgRrclA5cZNR3
	 KZemRiWPvfqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B46C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860125432.32121.13369707170582095569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93f8d04d378b355f2e4d15c3b5cd8bacacdbe3c50717e3dc0dfdb09789ccb35
Date: Wed, 16 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668601254
