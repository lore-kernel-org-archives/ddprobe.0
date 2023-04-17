Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352D71363
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF0BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681696625;
	bh=N4I97cqvFYFaLjgV8YOkP3EAXNNg5grb5d5f0lyTuns=;
	h=To:Subject:From:Date:From;
	b=Nmzx3T6yPsSZrdHFlo5KqmvtnLTLhGtg0UH4/WDLcYornVzexalkDtMJ3yTulrAYU
	 hXlke+v4vyRSMl2jbsk+RAed+3zR9trtNz2hg6gllDWksALuiZkd9XzSMT1nCiTgar
	 yxh/kzCaV4kiV5zWNnMWgCAFPI2a7sOOAay/ubiSol9nHc8CzA4v0dcT51PimpwWxx
	 5suNa51NW/Db4AtYA/01pTEotny8q7Qu0vSLSPA1KXtwfQLTks1/DCe16x18WdFTXZ
	 ZddQe5dN/Tv5sX29KSgyknzADMvZJdU/OfERe9AaPFaD1x5bkj5ZMH0H1osjIhJ6aZ
	 MccguZYoQOtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD33DC77B73
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169662576.28696.4998452647401732035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6910765efbd808083cdba10cf1391278e7c2ac21d0d8f0485b89af16e8e6c0a9
Date: Mon, 17 Apr 2023 01:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681696625
