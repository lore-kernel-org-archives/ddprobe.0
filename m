Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42044A2B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E141C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666285253;
	bh=bGn31zxOtQNX2WrRKXEfdx1Y082JlhbNp0AzmPE/pN8=;
	h=To:Subject:From:Date:From;
	b=LTQJ7ArT0g3BfnMNLcBUz6RPVGSBhKtoRUAcD1u5rEvptySylgjqmRzhCy2GESAf+
	 5hVa2t6sScB58WthLrKLpkM4TfOX8jUxyBD4hC/72gqecGO7KJ6arGAKEtvL5Wcoaf
	 V/R3+mTwPG9//FnFYym2TNQUTsEVxHaVI8n5HCfSoSs6Hqf3ja1fGQMuH9oDPj0FXI
	 oNrqHhuavqwh1jPdeZKUEq2Bi1ZeOIoOAkA+x3pUJPcRF/3DhHyfGkYla3zBFq65HE
	 BPZ5HFf0SWOQ8diXl1QspQzjCUI0GxqZo3HnE6bjs6A5cfGiXOg6Lf2lDZneiOXpj1
	 4TkhnNGSBSwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE28C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628525337.32172.10512545302684960209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8dcf8c519f7d7fe84ec86a8c3b7e5d5d6c819b44ac39843a4a9705dd6df130
Date: Thu, 20 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666285253
