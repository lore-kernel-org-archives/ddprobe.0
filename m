Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C434D17C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74184C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670903487;
	bh=uHN6hO1AoJYp97Jd2SkKaevOJxfspsx7GT28buN93Q0=;
	h=To:Subject:From:Date:From;
	b=MBWPwvrXEuxbGKVVJHYed/eYhUZCMVw04tteeS+vBS9R7xbTkZvl9OFbeNsWm/4dL
	 x5mtX4TfTqqVOUEvPaZZ9+/YDM+tw+RVwFx9g7rp2j3dLlRrbtosZq0BIv0EAjIyKP
	 qtuXNrGrIew2USnxt75SpBg3SDUjsaAXb1eXz4aBGiI1vQUvhDCdPZKhkAhci0C+dK
	 FKhVPz6RgAlx8nY5cnS2LY7OtDUCFPIuCgZhw/zWbeLpkSWcq7d+DQDRqZov7tBslR
	 nnyylkH7jc7CuvIPCH+lbN1FyTsR7ieCmJTI+Ij2aIdkkMbAD+vvbfTN+xD/nz8gQj
	 lF1ELHH4LbUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC5DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090348738.1786.5862760089062687283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e2a5f84fec8fdc8d59621a40924ed486e83fe7a85e7405f08219a77bcf8106
Date: Tue, 13 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670903487
