Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DFE1FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1AFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663040453;
	bh=wrud9M1kl0BMuT34t9mi+t+9/Z1rsqMmu3hCpnryJWU=;
	h=To:Subject:From:Date:From;
	b=qUNvCuQUbvmVIu6RfsFeXJKmSQMeHro0xwl1ntcq53Q10oJYEbL5s4mDaF418MrA/
	 JuEdfPNao2g7LYPodJwg3HpRPu8hTRwxT3CqKVZMS8IyDbY0g+aI5RgbAYLQVRlP6U
	 Rlfc6vFUhR+H7kvXCj7Hp4fLwkre6q+loaAnpTMZYq84M/vTFRrdDVyKOmX3vwdaBB
	 dQNdKRv6pQUT84GF2QnUdkdy6KE7apofyudyZXkdkJTKDBlc8vcjZIQzrknGrPrIT3
	 VHrhMI8rKoM8lhNQRAqieIlqUlihKmbY+W2oSepr2ybzxJZn/rpoM6BTTLH572m5Ev
	 H6IfW/I4MEf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541F2C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304045332.19050.3751561051731559109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d3a1225adc8311ba4cb80188ad5fcf013baa1ec9b0b9f7d1b515b46345d774
Date: Tue, 13 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663040453
