Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B4628EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D2AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670925087;
	bh=q0Fd6/MBdg+WCmeWtTDfGO7Y6q8ptR0dUBkl56abvUE=;
	h=To:Subject:From:Date:From;
	b=lWK2G8ffRnZVvs73ouoXCSi//kA/nLkEVJO3ZyRmHZR2eDaCBHJgu+Fu/gvztx59J
	 wwLiqAhYaAooTnsWV0fuOqOMnusK+CIEAaGMMS7TUR5GJ0X24R6x4mrs+sMTWT14Q4
	 xhk5SQ8NhAVsuF095eudCgAIxXyqGNoeR+o/NHuwTNC5tmrbbnCTXxnR6BKouz8+bE
	 P+S+p7qOwifXHK3oINMfRCxUAiagyiey4QF00fJcf3XrOBz7s7msM0qec2wkEqbeUi
	 ppQImDcXeRqBlFkEX/+VvQVhjFEdxIhexBSFYA5k0x/CDHX3Yr3fFLTR0vkDXglVFm
	 miR0cu7TB3OAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63941C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092508739.4913.12576272841726831830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0981eabc81c5474bc975dc4a638ec6f0cde340fd2344d5e2767c24f8088cd6c
Date: Tue, 13 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670925087
