Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22AB2F44
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EF2C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662034853;
	bh=UhPEouPWfq4qg35U2p+GFnvjuApnQqvRHiYXT5Zvs2k=;
	h=To:Subject:From:Date:From;
	b=fPGEEK0wDabsTXPZDgigRjiPa1sCqrmISh3px8YcRoaD1n4f16VWCR22VUkLPPtjO
	 EylaRDqLBgOotUH9RRe9KBRBN+zNEig64GkIfoS/37ga8r90SMTGXHTlg7WoVH2mp9
	 I8uc//5nr/Liqm8wfpLcadblf9Kick6ILDPinG736jH0eMLNsmySKLiuFxp/dNeCxK
	 V7MHXnNpLSfLvIymebIDcK8jykbSXlRHvJU/HfZdZ9Vo7lPlerSlvxht3+ycozbVv6
	 iR9a/Uc0MdidaRmJBCGyJqsGPx5rEbCvTk2aD14vibhrij4ZRZSbVULTZeCM9Zf+58
	 mXY3F293tNuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B3FECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203485335.6584.3553440916643978249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8304b9613e5b528693a57a78b96d6b42db926329c533fc047c9e6312db46c2de
Date: Thu, 01 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662034853
