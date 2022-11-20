Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C952C1364
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F95C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668952254;
	bh=lGxdBR0dOi9mqmdPXBnO4EJDdaibP7M2cUbYIYLG0LU=;
	h=To:Subject:From:Date:From;
	b=N/fnioSRMB8Jn9C4v2ntv9zHAExBxWXE+9BKyUest6A48HsOdbzVOi5YaLnOy/9Id
	 qkoNzRm4CmJjAYC3vGFWAW22i+4gPsz6USjBFkPQbeAwwzX8Tn3ozo00sV3AFJNKRz
	 mkp9b7/ml3ypjo271bT7JEElGYGCwtHbvmOus8IITilExgfBpy6cYYDBt7lemYio4t
	 1eZAYOsMROcctmhgs4KooAC/g8ZFH9wFiQBlpF45KMIOvjlYsKcvHWCn59mjRjIDcx
	 9koLKcs71Rxg61kGitBMcZu3uqOptwsKLLvmBicohcPEb2qyLS2Hpz4vqJkoafrVSg
	 BOjpd8BZ2JB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B504C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895225436.1667.18112445057523666582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748a618aa6533cc56c0b9e5cef6435e769fae3ddc638f4bd8706cfefd01c41f8
Date: Sun, 20 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668952254
