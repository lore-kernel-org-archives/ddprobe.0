Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C501124F29
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DF9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668536454;
	bh=6AoTykIvan5jY0QWSzDt7iX3B9o/eegy6+fNieDNo/A=;
	h=To:Subject:From:Date:From;
	b=mATOXFj5nxxFk2QwAhtwDXYNHlIL0ugPb5QCOXdxFnP7ps/2IqSQWsucRnFawc8z2
	 1gOPJkGMnSn5hNZlN5xzMRaM9N+E9kYhfolsacN/QbuxNep/7ZA/NoabMa5+CT1cfS
	 o72urnhhjB3zIpg+iVKTUCDo0F1t4kV2sxLCz+xMA9xqgN+i8gPqV/JDKfSnJWVdQJ
	 cPGC7+RiWiayZj2ptLZBJ0d5j7bdqZhdGxxvpyu0nFn9IbKVzQGRLtDdMHlZ91Wkgm
	 9Sl8AVyYT0m3+dQZKxHeDMuhvBSy9SgbLhPE2bReFMBDW74Hp5wiCE+7osVfhJChnS
	 qeclYCuOMv5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53779C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853645433.26544.16572941106714344634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965c600f64ee8195cf09523e6dcd1b946d8ea56e3870d8b4f5fa74863a1cc75d
Date: Tue, 15 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668536454
