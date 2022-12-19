Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA05F10E8
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA4DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671438087;
	bh=0c6kT7OJvhSzCG1D3ydWdQs4AtetkSUEWoJKdFGoJKU=;
	h=To:Subject:From:Date:From;
	b=oNVikVPGnV1eys916WsIjZXv5NCmkHMel+0ecYAmgmx7/Iv0jty1ic0KEgDJOFGy+
	 Szx4NDt+2Z4AQcSyzOfxPDF+I9x6JJ/DRfcfn9/+58yi7AX6rjVLA3QTQzIFPvmLwH
	 bMFm2azgGPGqH1j8NOZCmFwRvcPxNz58BVloK9HbMNQnODzbsN/5ThWDHCQzBuofys
	 71skdZPAvOCG92WoTmgEggT1MiLm680dgOmjv9wGAtYmeEcE5TPVi0sEzx9XRrfLI1
	 rqsi8PhWOoOp4kCPH3b4v1hOyud7Xhs3Ihm7KVokgg/ypijAWcRQaZh8S2gt3S8ORh
	 A8ScXt1NAMs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6050AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143808738.31954.1117038435932278674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b0d89acb81a51122b877c2ec2d2224589ab8c86d8efd4d874b2c95947749f3
Date: Mon, 19 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671438087
