Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80456130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3B5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666382453;
	bh=N1Rsh5HMNK3sPncqlVdlXXuF7yF4/uzGkMONTtsioTc=;
	h=To:Subject:From:Date:From;
	b=sxLEwHpBYI/6u6r5oMOhFLKr76rswUUxB7M0UhW5R47FRXXatGfAKa63z34QG2u98
	 VlWEcuNAJtnY+D5CRjDN61WFM/t3XZPgl83jukUueEHCokdfM9kRg7fxH8TIY2ZXiN
	 elYnAivp/DPA/QPw6VDVYtbN029b2bZl3ZXsd7fqCsM4pwAn53kvYXpWMcedx6NXRi
	 BHepCA0FByrnMKOYuZBnKVDJEt1y3ZIkISbUYLhKZLW/oUwSY6Ua2LVJoGafPYY8h9
	 sq9S15va0SVD2MLWPDVKL1jxNV94vRrr3pazDTf5BLYLTAG34RHdh1YVwcb242TRFW
	 5X7PEufFI19FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558D8C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638245334.15664.11611178843163414902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb445bf3e5bfb7321ccc3e9afc3d8b82e1af85c8f0ce88b02b85eee8f41ffc9c
Date: Fri, 21 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666382453
