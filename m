Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D959B4696
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF60C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665004253;
	bh=jO2XSNI5o5aaxGjXWCWYsUGKjbNeJzVwSK5jD8vtxOg=;
	h=To:Subject:From:Date:From;
	b=ioTo54avWv8ReJnFVKXlIlWG3I5uVxKDO4dnAaAojcF0NlH0RxDVtFbq7cZ3qraZA
	 SagYm7jDTFI0nWO4bDhaVyf3Vp+sEXk3/HQrqkRkhQ7xoyU7i6d95FNcn/HLHdVjLH
	 vGWFxjHhl2P0tGaNcSADa1cx3cXeAUVjnIS8SSPsiXzQ6tiGvA0nX9UR2nNKFo/Z/H
	 vRTZGydyyJes0BCJAItUI5K6k2jKI+mGXt6Gy3R9cUhAYccLc1mCi7wzD67cj+uLma
	 H+dzGNNRkv8ekuw5ncKeg3DSPl8aQviWGFd4OvTWomHGAdPfRMwcGL025rxHIE+hXP
	 7CVf6SbRXU9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F6E6C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500425343.12134.11715537890941467469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd22ea829d1a6d4c15c2ed9f0177e9ae778e6d977d42b3585cb9284057cdb5f3
Date: Wed, 05 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665004253
