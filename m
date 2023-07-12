Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470A8384
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 22:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46D4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 22:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689201548;
	bh=aWET6Z0vLZQwutZfra+1K8VyAwNhZ4QBF+1epnrnGzM=;
	h=To:Subject:From:Date:From;
	b=Bd1lrNaN0YO6Dk+CPU2jmceleYdU+3f2qv+n8pJTwnGn7z15eHbyy2N30MENYIWG5
	 d6PcuMCUAUoSU7MpuNmOR34xVvBxK8UHCFo4eJTDN0L/uqDpa5l+opQD0uH7ZIVl1w
	 MKqPGale5WT5h7U/igtZObMycGf8fMVsyBh+giWv2ckkoyYscNNfk5/reJS8aaC2qS
	 hKy5ry6NrvpE/IeDZriPSPNruFeEXHtoNXb489jShI02hHW802pPy5Y6ZnACZpxyS5
	 Lvqyz2u3lLGw0Lfsp6uB9+9qixYVO/Q+uElWQqgYJaeToX0J8waLXdM5SlcXCywC+0
	 xM1Xfb6xxmqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA784C0015E
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 22:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168920154869.2460.10711686126715397533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af606361341e55f5a3bd4041af77c08753f97f0b29f4a6c6b95fa04b0a5b0ee
Date: Wed, 12 Jul 2023 22:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689201548
