Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3FC28E1
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 21:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0741C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 21:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677533165;
	bh=m5D5RsZzvmnFHX3mIP/9hLRD/MU4RNvfc/tyM/zWA4g=;
	h=To:Subject:From:Date:From;
	b=mpvgRk7V/lqq96vIdoBdN946roxF8W4Au8echgYBw+oRypZebxr9JJ170kJd3Vb+3
	 G2ArCK7O+0PL7bxTYlKwC+uEgn5xQ36eSYOw1NYs6u0kW635AI4v4hHds6YunvKIo7
	 VK9ohvGGB+pu1Zo958nonHsyY8fwpoSJtdYe6l5RQf25QF28qJw4NzJdyxtMqeiEL5
	 YtFhWZ4AaFPN0JCypqqRoAs9qgW5Z+PfE+WUrLkgeEqZ1XfSCUqXwmoCLZ7FL9LwhQ
	 kuVtay062/U30x/nimpiAdW67HA2CGcGr4iIOlHxXOG9ThRLWCHf6vGdTwd64jIyEn
	 H+pCgjH6dewpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87DBC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 21:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167753316581.24083.9393701659867383590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b59312adadf3cd3df4736847250605c2ac83b3420853ab0633a97f15d3d6b6c
Date: Mon, 27 Feb 2023 21:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677533165
