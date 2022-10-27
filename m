Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3580AD23
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63E4EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666892454;
	bh=eN3/VMKEtv9cHlROoiL3dbMQaOEAt6C6rqXK3iSxasQ=;
	h=To:Subject:From:Date:From;
	b=bmYDkxlEAi2wVp1tvHQKhRlh9CfLtlXFi5MF/1qNp1Icje2bdv3exIxQRvvn57Rb4
	 SL/Aom9QK3BS9IiZyJH3L9ggn1vA388W8v7X04s9Q5+j0tMosHAVZIQxt5mAZM+W0K
	 CT70MMjFaRbfUseQE7q/1nRhZWPH3+xnL+OTLgVIDSod0dBsdBuAEeCLiRTDjYOb/c
	 dIBMue+PJC1bke8svGk//YQ+wKYMU6F/I42YM+WwtwL5a8+M3HgmDPEh7pImJ57OhZ
	 u2/BYPpd2Wj+ZKoz+7gqkaONPLqn5yT40LdqPRfufniRn+cxbd5HSXw0ckZ2jahRKV
	 Y89Z1lcimoWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA86ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689245431.22487.5339385152434139575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3796b0228c5df8ea2bcba6863955f0d4e957cc300a85986b1b44dfb3b9bd211f
Date: Thu, 27 Oct 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666892454
