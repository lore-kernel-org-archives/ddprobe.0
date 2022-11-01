Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79AF7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787E3C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667331654;
	bh=PoFPr0Gsy8Gt3P4Kwx0/4deRhAUVJMgyeMGynj7L0Z8=;
	h=To:Subject:From:Date:From;
	b=hgFGHiovYFmoq6Kjf7rhOQAfn/A0Ouug654RxTnyewM6jJqjMOGU1VM0CgYUKmBBt
	 yvSESpNJUAcGisMMPR9cYoebV157lfHJ5v2/bZnmBiPKO3SE2ca5xDylpGiWlh6b7c
	 ECA0Pr2TjUxVAGZ+MNLtT42gv97bybwI8ET92Xm66nQ9SdV6XzqQpI5R50lP1dTsRU
	 hHA5cXzSAREGS8EIn4GCr5SOMcTpa6i9pmNlMKuxWrs2AtHTT/0UIz+nUK2bAqUM/a
	 rZUoPmSssJ8cm6fwNAUpDqy7E0d+QTX9g6iGCABaJuvPU5ZrUN9tYMCxz5p9C0/uI+
	 P7SJgMHCzMJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E533C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733165437.9818.8841647573713567854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f32efe87a73a42ef82cf41f1150147d889d9328caca14b1b183a55626ace108
Date: Tue, 01 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667331654
