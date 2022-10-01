Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B9B1C17
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750EEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664586653;
	bh=Bye7uINnDVjq12gnFim+A6zEMUvOQV4fwEW3GnrIvd4=;
	h=To:Subject:From:Date:From;
	b=GDezXwcPG/70t0ugb6+ElPWSQawZsv6ALH8MHcng4XxQp9F+a1+UwPFii918WKAqZ
	 TD42viWOmpFQGCrGddWOk1FzqkWeOuNdP4QYHlLX2cHj1in0u755fOpFnDGwQErmdJ
	 iRq3HMu+tH8o2/kKS+AMH0P+68ZIu9F5Gnr9jEoVh1saj44n36fmJQUsMVYZJZyb12
	 Jz0WC7BOre597l2UXFjDmqkxei3VUbldjarDYnXJa61yxhkEavMRvHa+VaHgWY61vz
	 W1AbIy5VmKtSA1n1T3nP0XeHsZWGd75XKPB7LmotLS0KxGYmfvEcZ8JCm+Tj+2eshJ
	 BAM5crx4qzT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D009C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166458665334.20476.13682531358414277062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daef3855ac09c4a2b9b82a9269b56ff500af4b18cff37c956593a4b104506acc
Date: Sat, 01 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664586653
