Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1147F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQRzJ3he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86441C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699574896;
	bh=urlPXoTMIz1QdpXdKyg2tJvuasFU1Q2TySHcNGD+vq4=;
	h=To:Subject:From:Date:From;
	b=pQRzJ3hebjgPHNIVqlKic6zr1fHktKNuVf2ubzXiMPW8ZM4G3QcqYREfAcSBffiN2
	 s3Nw5s/m2auNoWLR6KUQYTZaO/QnI+UKFtcvSXpHWvFVYlDR6hkOSc5ggKeWeCU4F7
	 1sIdrL1yNx3OWuEOqhQEcwaD1mCkW3PSg+/nXl5uMKFtjlvmy2tofINSq5iKnYBaPm
	 GyAsiZgFZ7Sa12LYISvM3HdS1ch78lEn6FolhtLVyqPo2XkQrg594VGmUGI/Nrqze4
	 SCTJrvd/BCswcIpZA0lS0Od0/0kheVV2ygGp1R1FCxVMIR/PLlujSKOFvd98hZn67O
	 FwiiUmmxxNVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5B3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957489643.9881.14656007681082755436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdca1b6bccfd68238fb1fe31ab1ad0e6b06a6c8cbd2ff9262113891ae1b4a5df
Date: Fri, 10 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699574896
