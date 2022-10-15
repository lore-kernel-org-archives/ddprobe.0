Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23C9363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C2AC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665792653;
	bh=QaG/gm2g0rXbga/Vccm0QixelSom5L+QDz4m+Hu0Kps=;
	h=To:Subject:From:Date:From;
	b=U15ctYuhcz6wQyo8+sVGdcHDHOaXxuEhoTkvrC/576Lzh0y5oa9GfyzqpFTtzz1iq
	 gIkstB+SXb50aMYHSPVfPpiq+9RXuLDl8Hq9ByOza6w6xOYjP8ikP+Aw9vPJ59v2S/
	 PcMeE3MID1Zgqu6765mQgmm5XYthzG/jmFA3y8dM7/mqHcB1dA3ZYYpl6yvi9XXFgn
	 eCe8GPQhABjfNXs9ZwPASMQOvBhqgAMp+cXJ2p3sohANL3lhE/m1cLRf59BMZeY/r2
	 aNu032dyVyFJbWSCT8hJu/Kqa3VIJ2/fV8U4IeLHVXPuAFT7FSOCTSQeeTabqVAoOR
	 GVhGzvhhDT6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B59AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579265333.6765.5858380582990336784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9f0fcf7992fb230e537044a1bc7a6acd0152094d39a5af671cc5695ee6a2ae
Date: Sat, 15 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665792653
