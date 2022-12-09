Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BFE7E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A7BC433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670559087;
	bh=xaEcEJawHpPFxFaKa3hfyrCuZtxtKpa7mCQQeXHMDAY=;
	h=To:Subject:From:Date:From;
	b=rZgBRYNCL5+qbNbPOQkKRU1bWNVsu9uEEHcddv362tvw0XHOqAVLttoz+HPbRNElH
	 stcsWHRal2FEW4KW3SzRkr+H0d2tvMNlyaz6amx271fy8UJb4v5MNSQjZwqYOPDKbS
	 V+Xd2VVKETqIeFtPOC2Pr+7fCXfpf5DXEbTwzeIdZ15pZe0M7Ty+S20KpwnRiXOPZO
	 rLUmveSYonoaM7ZkRGJd3Jt21LR0b7I0wOm41aV+ITnPta2IR5G9XC6r/ThOXx+Nvi
	 wUXBrgnUc9kF3EueytBrJmuMjRdNlrbGK3TRxFJ+8XXqhWaI+bxmYkBcSOcmnGzjvC
	 YcfJg5iMf1JCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A902C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055908742.28967.14499668132550138815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179a34382f9dbbabf6cd642a166f924b5c6574897fcf99fc85ed0a2e44f605d
Date: Fri, 09 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670559087
