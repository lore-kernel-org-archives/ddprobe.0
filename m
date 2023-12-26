Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE215662
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1FbNNe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B79C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703632096;
	bh=dC/IGTxDr2tyn/htoykssPhcjNQMU8XMx/WaPHLNOso=;
	h=To:Subject:From:Date:From;
	b=t1FbNNe8tXEgZWgVCU9e19CaFWTCPVMtH5Z4w8aT+YQDKk7tzHsdV6r+x18n2FuGG
	 1LTfAJxR5OKxezgeHRDR+OjPmrPYrMj7vI7iRJBzJcA5Ye7MRwXboF+cx682AaYRBC
	 sS/iTo5kGppVDSGy4jj8iRQUupWGEZl+mRXczjiYrgs3REQM0sGo+CAlZ1B1m7+lBq
	 ahBXZJFYQjdI+Xk8p+j+9JQPvUjbFb1hoswUdxL1swhWp2xHz6xLQcIM6PcxUMXi/y
	 mXO0Ardfkboa6csq8BMbAFsVpecmlDB8f2XEi7slIej3OA72vSJsQao0aFu5vpjf44
	 icI9Y9eC/mP3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86324C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363209653.23377.3856907926550992056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131c41fb10a068f5ded921227089a20f6c01a062d22009410fac131cd09dea93
Date: Tue, 26 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703632096
