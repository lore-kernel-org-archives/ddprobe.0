Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD04F20EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE13C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672642887;
	bh=fWOAHMzbiKJwHtI9gm8fv15C5Ni00BcR8sWu69PGPeA=;
	h=To:Subject:From:Date:From;
	b=B86szgUu/Or28d6i8BD4YfqBQmjzQ9cmnI0KsO0JmS6KI0mx8NgyakuIZF4OD/vX1
	 mO00e5GcOnOUSZxGio9USqgbziSAwljDsEPO5BUu9YUk1kVrEyDx6JwFk5w05x28Cz
	 MR+i+1/6eYqr3xYRMGDmgQ3lyDQWgKBx18+KFQ10mhbUuEtmmqAFgpi5ZomxNEbOQt
	 lVeBJ2lLe7uM2VdMn/zxocx/MTtPBLhsOxKXxPw0PQLqcBStROX8cZ2Udby+xq8zdr
	 JTth0C5VOTXVgE9aLRq9fcjWAKRjKJikhJT8x3vm6XwXoougatW+SBLV0sgk1JyGye
	 pRuv1xlnU/7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CF6C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264288739.2663.6097981084807780994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a922f018750fdeea645ef120657062ad355b8c2f23157aa18e41b29ba99a17c
Date: Mon, 02 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672642887
