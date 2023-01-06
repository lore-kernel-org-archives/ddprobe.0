Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0652F43
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8719EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673023287;
	bh=yLuxX8VSnAStjxM9apC0arp8mfk+DBU2N7aVaguWwTM=;
	h=To:Subject:From:Date:From;
	b=GxXmlkN23BkQTNcpDqD4nfOOxNpXioAkg/7DnhnLvf+fIFBGMCWMCaSSMHKa1jSHh
	 xY0BG0ct85+YLD1NkIbqq1GNDG1SVZoQg4N0dordUUKUPJQPYYhGR7wanEugiOfL3l
	 NdzSqac6c/JyLnrW/ZA7r6hVAs0uXBSeB0grUGmgkc/JD+l+pkoubqa7pq/chklSF8
	 UlkfK6lDoG/WQu69zo8CmXQ/lbjejJWqWT00NyrEqblirKB/aESKhSOWI9tAi5orNE
	 XFwxkEifmgyUaJ1b2Awsor/lobHjBUhc74Ok4F665+M5EsY2ABBsHog9lLtJsAvxWG
	 ylV+xrr0ah24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D835C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302328743.7300.10972189949330530153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bb1ecefdf0abe6dce37a6bfcc8c77e2834ae0d295fbd1a6379d119e02ef981
Date: Fri, 06 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673023287
