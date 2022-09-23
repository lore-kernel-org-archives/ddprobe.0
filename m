Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE8E163
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74372C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663950653;
	bh=A2wn/6El3j0F1maUxnByodKC07mVb4NZFpGxEdmWM+Y=;
	h=To:Subject:From:Date:From;
	b=T2wGLZa62yrTRvNss5ANa33reI4JhoA9uocpDIwdb8BwGY+etCylUTuKADrHs93G2
	 peMwwht+gnZ+8erroN8BpMdraOjvJkS3OYHRseyEHPN8rTtolCg5d5j/hsY4JkJtJJ
	 R+IM3Pj90dMZNeLT3KdKyeUF3iBc8bRp2lOhIX/anCv5Q3dN9wAafPGfavpoXzATXi
	 fsjtiME8DcJbD4hSf15LCcA3yxOZcAji/WziXSFQCLb5Xuphwdg4p9nUN6PelQx95l
	 xRqnzMuPffRftbhmSakSIKVHHw2Y3ZZGJlfg+ZRZttvNC3tKRhrCR7B47X4SiuASXL
	 F3cVoLj/kjzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D36ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395065334.25838.722614350404985707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e24c0d4db449933731cc117d1e6a570cb45d3fbe893ff4443293ab91969c2ac
Date: Fri, 23 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663950653
