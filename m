Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D8EC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB83C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682250065;
	bh=iYpXHmLHUHtlCUSDvWCYklVU7TH/ZDTQt3NRvxJsGJk=;
	h=To:Subject:From:Date:From;
	b=Cis8b6ajZSptveRdXXboo+vY3jgCne06gae/MlzrwDKCY+ytmvd2Jzktkcmpl9RDt
	 pM5pIlcO6Vkcuz3K+SxBJTnSlnCVpLRWIXePdrYnGHj6T6u6efR4HTgA3zU5g3XbSU
	 y8mDnD8wSu+RAkMrL7yMyKVfDHjFXG8Gep6En625YRnR66xVTq8uQIC2jfraKAgM2t
	 DOdzm3Vd9sv8Gub6jNLPL1lgHib4zJMc1jm/zfALOk2fwjSOcdcP564i6h+lwv82u9
	 97lH/uFGbNsnxrgQNSWKQzPxVmkECsWGxd5MXdKKnvmGJBPVLXt7nBfqWDz4pbAM4C
	 oBpdnjSlVIUNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B2FC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225006577.14395.1392924675073880918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5daec8f905a623f6ee22ab649a59f36e6a5ea949f8727188b7958b4f1f6871
Date: Sun, 23 Apr 2023 11:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682250065
