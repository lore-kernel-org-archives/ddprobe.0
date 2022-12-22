Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E9123AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBE2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671692487;
	bh=rO87IgwS2UYJf8ugLmI8kWiDjhPn1XakU/aU2g8+71w=;
	h=To:Subject:From:Date:From;
	b=VmK8f8WnMIhAmgKkDJkSGmizanvWHX2pSfMaP3UB1Ig1j+9Vf27ACpOg12BiG1ZeQ
	 hQN6BZG2Z1lYRs5X6Jchzgxlc7aYshMuN2IVAXhHyWWKpRpKIV+7ck61SYomPhPCmf
	 PKjTvCEBaYLKULecZ6BlGRzAECWcHvp7HmDzgrNa3Mqhi5TO5C5XpzIKJTF4REngwn
	 eWmy3SfzySyFABsSdpLBFpWnLExTEaJOMTFR0lDOmMokWJGmEu9+FePjDBtNu3SrBa
	 LoQ1jDDuBvqw8dXCnegNBz64FjDOZFZvcZPOMxgF1sCoOhcpvghkHFGKyZ37DpTJOV
	 nVbEzzIfZvpUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88BCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169248760.5337.10099669214922285331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ef93e6f78adebe5c65b02afbc6dd2e55fed941f8a917f60312a15b81b5b50a
Date: Thu, 22 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671692487
