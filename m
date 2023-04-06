Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AA9320D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F179CC4339B
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680806886;
	bh=Ttw+qAwffw6jAvati8YnCPwhZTbiit44cCU7ETnzJ+4=;
	h=To:Subject:From:Date:From;
	b=MtVQgm0YQQaggOlm7nTyNOELmkvZohOrOqtXMR+3L+jAyYl5ZsjW43Nci+etNAemP
	 lv1tVBs0q1D1z59PfOinRv9hVn7Mw1Vg8dsmo+B+sDkJskBXOsRdkurNkkOGLGOGYb
	 WuVc8NRCwM1L2JVwTd9klTGE9hu+6EhGMB2pcu8Z4s+e3AkZ6lFMw+BBCuFGBmWJMg
	 XnGuv65jiFNp8iNFsyyzMYQyO631+jDoko/jsCqUowjqm0KKo7w8b7sTGYPzijn2Uc
	 fF904WzX7AKIZq/dRalYgsgvyxL6u4MbOK6+TGnmg8a7hECGKrsEcBPzdiuBFpozCp
	 BtBSo7AeXnAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F2DC77B6C
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168080688584.25635.4887904207148738511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b7dfe54f012410b1f1ef9b037660b5681ecab53f959be73014f246f60b40e3
Date: Thu, 06 Apr 2023 18:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680806885
