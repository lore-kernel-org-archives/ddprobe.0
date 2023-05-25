Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7234C199
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 04:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28CC1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 04:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684989306;
	bh=wWIQ7oRcvrT7g1XnWyA3AgLRZUzRHJvJ5Cki9w8kmww=;
	h=To:Subject:From:Date:From;
	b=EtMsvpmeoV8Ln0HN/c6FbnZ15hN8gJQXXNPjwLKGvJXN2HtllbdIwWf/2vNjVigBg
	 noGRvybNnhL0Yxb7rnmTHNcdpA/xNMbAuiTo7VToS46gU6/E59gJn7sgup/ypO4Res
	 oJAspNs4mrCbTbDFZME5AQPThr0XgXhOHA5oKpT8q3kfOgsCaTKEncl52+u8Ph+lhB
	 +6DrBdcJf6MTtMlAUws0nq6TIC6x9BcM10x8SSHulxoWpTMdk/FZnHRhW4641NMF2n
	 2LmqBZQj6ML9c3H5wjY4L098TqDOOpeZ2nZIJpsK2Gino9Aw+WzgLSr9GgFhxBWO9o
	 fEBdIULJzOxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02142C77B73
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 04:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168498930590.21650.12466115762345052685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf28f0d3d29160b1f8555ec76688e6d525bbb694c889b2d1e9fdb4a9030163f
Date: Thu, 25 May 2023 04:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684989305
