Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D10817D3
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE39C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689040628;
	bh=x3DWSJwnAFNJhkY/eFPCP2GDhzP4l08MveHi+E4r/U4=;
	h=To:Subject:From:Date:From;
	b=Rrnf8dlLTFIf6iYlEzC9uQD0xl+vrxkxJhstbnAm1jVVt39otxp+1O7+SW1RCQAyG
	 luUvxL8alvavk+8TIwk4bfJVn/WzUuhQ8+SgRivX+MLnBzFW6cFGqwiAR5ku9TeZdC
	 kN2fCwuXAtJrlFjPXpXLf4STxRF23RSjCxiYcah1ufqfYixM6KWpQs4WcFy5RyDME2
	 lmRB/1FblR7qWFdpCdpt7cvY79NAuDm8sDpIn0+dUHdU/UIzBDo1oZQS8IPD7dk/Ak
	 rgENmshMZi3wkKCZUz9TKS320gCJe6C+kOb7d3lTeRmcaXf1X8xdN3nPmdvWxsbkZN
	 +3QcIGrSx5/dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA932EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168904062869.29483.17395997649542277693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37925657131574436db749644e9ddf1c249782768a99be32d724a65487e13f35
Date: Tue, 11 Jul 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689040628
