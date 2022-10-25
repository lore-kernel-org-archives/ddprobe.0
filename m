Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BAF7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB56C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666680053;
	bh=gtFdlHNxv07Na6xpdgxw/UA6xaqKtdJaUcVVRgX3QDQ=;
	h=To:Subject:From:Date:From;
	b=apXLbDXXM8gzknWiIUp0S3fkYo6/pL44zrA8kDdMHuzm+5Mi8vFfY3QvklX69SXwe
	 I17qwwCAEs3I/RCCYQayp6LLy+BDWqBojS3MZn9uajwAiXF3sOYOkkCB/en7fAjBIf
	 H3nYcSrAP5iwCKzI5D8I6qADu6S0QdMLCmT/qiNen3a5CbqX3d9/B8KQFVC7R2V47J
	 UYRi6z2Tc5IfBVgDsenXlva7Ops5/miHLNokcmMB64QQaXcUobbNez0ji+mImJg053
	 r3F+PnnWICfyJ/F0OZlqFQrFsjMIsIEMuHypt72n2Xu6sLpo9nQ/cR/fNCGyTMT5ZN
	 cbzEoGxP+tcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E573C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668005331.29152.10479827988588027252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98461590d1fc6d13c74e4210ec2ac4d8e6a6abc17afa857b4d9920af774d1473
Date: Tue, 25 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666680053
