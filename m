Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97BE7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A64BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663792253;
	bh=uLv0EX2MYU76q458hsr8TFviKcVA3KdSSp2MB/CFWtU=;
	h=To:Subject:From:Date:From;
	b=ET1BW77t1eGaurIjbLTYOMafkCGUkH0sMI3axTns8h+PPcw/Du/lARD4VxyOj0PnO
	 5pltKJhqLTI4EgV3Jv5x5HFaOEaz0Hk5GJZB7L4CCWaJSTuPuHtdTVBdD3gG5V+Naq
	 hc2hB4ainiLjTYXu5FYujBP5vEKa7TeeULpYFrtKsCPWFGFBxO/4hqZraF288rbXQz
	 vRVGFZhagM7tOoNOiHF+VmRo3NDR/h2KNxMhaWlzMEChL4pQQhg7mwtflmYzCfmZBd
	 Cc7rLBj8VYQfdl1a2VuD96hFQ68KOCb8nRbYX+3iOt6OdR68Ew+9aMdknQBHODyiJG
	 nEOBcK0D5b9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539A7C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379225333.7402.2715539307564873976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88eaa3b99453953451b828c24c8535fc380bff4748da8c9b47f5ea820fcbadb2
Date: Wed, 21 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663792253
