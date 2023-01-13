Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8852115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8871AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673638287;
	bh=MU1B6T3Y2RO6wX7LVI6scNUOcJNbGUcfmWVkrcvtz/k=;
	h=To:Subject:From:Date:From;
	b=AXeOTUIkDgttA4nZ8iB2f2HOWoOoapaC06vTV2YvX2DtYzaNNUICrCe+jwpVcr9Xh
	 rnKvtQEGVMF4WzEExps6SNAwpoPUJwOIqPwo6erj0kfAPf6MAUWA4uEcurXbGUvpv/
	 UzEiB0SFLpwgS3iAtLmMN1YK67xDHa+5KRmP56X0/DOgoctXmY6AOsJ70QeYz3gnm5
	 DiS1rxAoRb4VAjL7VSDqkqETtO/LveR8O64qvX3jLMXerAsMjE4aubCNNEVm1FnuI1
	 qOO5Yt//EZFTzoDa5CdA9EAeddz0sXNmNP5Q303vdoTaYvel+fSfPESRp/pSizhK5s
	 ooI6coa+cEJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABA0C678D8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363828742.14247.4858369862387509298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b851b17236481daa292393b669e8bc01041bf97d4453307ee464f61e0349acd
Date: Fri, 13 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673638287
