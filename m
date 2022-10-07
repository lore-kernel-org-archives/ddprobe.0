Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1587E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4AAC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665129053;
	bh=9EKLSjuxq/T0V6Qzyo/XPyos/xENXKnOXSkWMg7JLjw=;
	h=To:Subject:From:Date:From;
	b=P8DcHVtRWDUATmWHfLbJpohDQRSOHLxFlSZHuEkalFAJQN8rm+tk0P/0QewnqeL1n
	 7DHcZQxoAIRfUBezS3K42w7Kn0c9DlDSKY55oRSz/TdC4C0pBWTvRl8Pp2VTuCgHys
	 bPyh5HETOIgn0idAuiE/Cpakh1+QHY02Ex1r3zd0SXOVMBHPQ0YeeJJ9BrxPWoF1iD
	 xLsLMZeIqU7VZONipfBuwHvhnBBLD1roTQU/bCSbQ0P6sK2JqXKk4ArHwOaDeorzH3
	 HtDzSRbofwy2gMpe6EzvWlQV9+vi3HrJ8jW+56Vmf4swGCwC/5614UXtZ+/8RUi8M0
	 cFjGkzRUcphyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540D3C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512905333.18569.7044631512391965903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31eb5bfbaa0e7461c8b707b79a07ec4a4a4c8147c48f42ca68a9c51246c3b67
Date: Fri, 07 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665129053
