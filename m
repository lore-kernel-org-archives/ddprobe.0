Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F01E23D4
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8132C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679483345;
	bh=IUsbmz424+TsjopEWzXAutWUwoXm6zGuDJOUPgA8jLw=;
	h=To:Subject:From:Date:From;
	b=dCYNWou4l0jmiR2/qZGBBlZ7A84+f/yCkI5X9tzIhMcOalIO7ZnHFn7GCSPv4nhtb
	 133RQO8341gYTvt1aDuvs1yPPeizafraI7hK+ztbO/GnxAc994m3CQPAPJFNZeCeqP
	 So9tAjoDuNvReFFVb9AQq2S4bJ4WcFljYCr5CHPyxrHZAGO3pKzslzjIVNAO/VRPqA
	 JWxUCIhkEFQ+LLaTF8IUIa0yT54owVOp5IXXAgevgURvolq+Hev663TM5cnfoqnSQF
	 3w7Sj6JwenehFmkKw0aL8p7hu5bPMP3HoDTmMurwIJTF/O8KpvdAqxwMuojSkUOQiv
	 5AhVVAxNKTW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C17C6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948334580.24871.74002157024666947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7574d6cb4d4bb10226872b65c526beeadfb99648a8ab462330a759f177251ff4
Date: Wed, 22 Mar 2023 11:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679483345
