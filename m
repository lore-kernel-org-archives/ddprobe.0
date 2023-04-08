Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6979D1FA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 23:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10B2FC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 23:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680996666;
	bh=t3ymAxPGh6D3PioDb9HFfg8u/idniDm39EGp0s0hIxk=;
	h=To:Subject:From:Date:From;
	b=V4dIawLgpjr8GNeaoupUDf4v7SeggFmxp+v/PsZaEJsf0Ard/Oqeoc9zgWeweJeiL
	 yHZ//X6Y3FKjrMYAGzQ6CEaaWj9vUu/A5o8KsupNQmukcqfYMGMFefZA64gmGWMEgr
	 0KxSDfRN0tGh2mIGL3aBs4QMJjgGtgMc6YqukyXa0D/H5XWna5uthM93W5pOJcNYgn
	 Nj504o7BvcbQCowlbsX6MKDinf3nkPxqqMx6sssEV6tayWLl/eo5VylvDNQSio79AP
	 IM9iCYpXTfQcjB+FXDag+HuWwFUBT9nslWQc+kZm+lqT7P6SVGbxbXBYeLjJDHaRvC
	 5bXu8SwYoCxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E11ACC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 23:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168099666589.30084.1329861766696364063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269e16961386e3041f9cb57aa28dadf78ca855bd26f38c9f9f0ce0db72cc4a3e
Date: Sat, 08 Apr 2023 23:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680996665
