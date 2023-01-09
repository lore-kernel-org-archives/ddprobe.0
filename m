Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D7728ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB092C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673259087;
	bh=7tR7vno2WxT6630fIKDOuu7vgdsh8K+mAA45SHPXKqc=;
	h=To:Subject:From:Date:From;
	b=M7M0SIivXXOO5OYWauWWRl52t59OHmEMmunvBcx2h5Mk0bO1dRQMkvjKlirVIqQx2
	 Y/oKK8aShZ6dTJk9IDzGtP8pS8TTfh14LRsqyEM2ZyZKO8QpLNpFkd33T7X4yWQOMh
	 psMBXRuIapiAydZJcT5+5+OSDwbYJdYVO2nRa4tS5sdMv6Kv5DCT05ux24trA0tfyL
	 XLbVh7sR29IZb5b+tygpkhtXMgURjZLo9mbLhue3pmG7vQd35Cf0PORZ04JH9be27T
	 jHw8/hlU65k+PpxF32nAVkNkqfWiYTzJJS7gYUnUTctNVF+i7+n52/nWf2aKI0ZkCN
	 n7+gTJX4htrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 763B0C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325908747.18193.328815873363746532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f958f457c1c19c07a22849cc46251530be3940d8621f4811662630d5455a4f
Date: Mon, 09 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673259087
