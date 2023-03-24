Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C577525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50CBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679656865;
	bh=RMc5Y7+XxByKuho/2rtf2hWzYl1AkdftyDvF7RywIig=;
	h=To:Subject:From:Date:From;
	b=Lp0IRW8UEgC7zH7NYeFbBBauE8INBHnNAKDwmNMcipLWuJCFNI/NhVjmMIzMawTam
	 3LQsZh0KIrUmP7u5WWt603lvHdE4QV++OOZeoxNCddPpnh7Iz0su344y+u67nIsvNH
	 X8mTeLmqDAfPJHgou3i8eorUgudOK8PPq74xsTvxlkrk07mU0Ui9Oze9yx/D3da8ZK
	 aZJwLQdNvd5hVpnJOzXOxGEswySR6X1Gam75yg3Ssv4zLmoq1e65Fzd3xMSKRCVBjK
	 rxd0q9FY4k7erW52KHKXGrxB+cS7tOWuiIP8bBn3ywGG2/nFdn24sGE8nxkbJgNPAe
	 iGKnccqqLwfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6241C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965686578.11754.16764765678212152410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f32101579388e3496b7814dc6432c9aa0c5ccca3e63ca25a2b81be18ac76ce6
Date: Fri, 24 Mar 2023 11:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679656865
