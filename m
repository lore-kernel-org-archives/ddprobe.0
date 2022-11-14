Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F496FC1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73290C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668440454;
	bh=NFITPllLpKP2ziEgCc50RYszpIHggWg0i8c0MDX3dio=;
	h=To:Subject:From:Date:From;
	b=laUFGCFI3pGB/E3d/5ibiOy8EQjyCiY4XkNSGu7O91AQIyZJpIDZVzVtvmmSypA0D
	 H8/TJ/x0DbW4VhURjFolHtNOgdt4khkWVSWeQQINQVl8qEQ4yM+w+hGw887TQRPpu1
	 Y1h9fazlgT5zcPpG5RS8MbkFr2fD4kS71RLWFKfyviq4+lfnh2BPti+muqPUT29MS2
	 3mf0/FnU92lKiVhSe3KgeBMykkekZwfe3WmoTC7uz3lkklYohlLo07qlvaQ57xDIPn
	 DVPzfbWUz+fTYLWKKaQ8OW3Rx/cY9bKTfzLmbPsuURh37JoZT9NjM0d4GBGwND/mlq
	 eX3Rrk0tclBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581C6C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844045434.10333.18083406141309864459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ce006c3099b7dc85e0505b229e0f72bf662d25e9fa52594be54d621ff1664a
Date: Mon, 14 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668440454
