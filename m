Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12068C06
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E28C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674077487;
	bh=jjyF7Wf9x2kANbCxo5KIPe0SzTMiHsg84mKVwRg62fE=;
	h=To:Subject:From:Date:From;
	b=N8BjLjPdn/7sTUdHzhO5Xtl4nQyLr98Kr6YHFtP7hhExOWIazOkURfIlZLW3NQwh4
	 ngU7Jvh44FcQXV/ejMDEKvcrcPx8UfXMrfg8dKCZTPexbAXk73WIxR5Epj+O2pQcPB
	 Ae/E3GFpv+WWk3JvtkS5MuEiYpnWZaRuhLXW/rbPFIqEobW0xCf3TOD6eqSGmKtZbi
	 yB13ftSam+jBHcVc3CJlFFFhNiE2/EkUQJ0arvgGjzVUc/Z8FASZWPbjRk1ppQPUpd
	 e3Auo13SRzeKC/zu+w7s1UQrzH3dTTpxNvqM5NKyTToisRhLiSQL1B+1EXV3d9ix1/
	 GcnjNuZw4aCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C94C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407748740.6057.11501801655234001519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66310c94ba113811cf3caf8e1103410051e429232e3cc1ccfc89ed27e55148c5
Date: Wed, 18 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674077487
