Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30D4290B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1C0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673908287;
	bh=aYc7QIOcAeV2OE4jgJBAs+GKp8BUIzmSQ7A4v6v93AU=;
	h=To:Subject:From:Date:From;
	b=ohk2QUNC77I45qQpqRfCFzNVDGlkvrXod8ggMW8IinPNT+oHRbYwlAVElXECMQUe4
	 RulakswqwbKX9zhs7+7Swlc2lwP/mH+9qojdkEnfPtN2Q0eqDvrE2RTCymiAILXKjP
	 fXJPgB0NBZgfxkJDPYUPi9AVcNvu013MoK0kOskGg6x//JDm4TGH/iilJuMUBg1ZNt
	 095Imvb/aTNSQ1mgkR29Mi7wEVMfQyYGdoXCQuqDGg3Ege3l3PtKuPgyCTydCggL4J
	 a2mri5MmpbErhSY3sYK+Q2ssI9tnKvPCxR7EP7WjO1c96N7QV4vPMPhyluTdkz5tuB
	 Wcr1C7UCbHYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F27BC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390828738.27882.17403724202701254693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb2f9b5a88bbeb1a0337fb25c64a618d2f3aefa89c9b99c4938b69bd73a2194
Date: Mon, 16 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673908287
