Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF562F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 148F4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688245449;
	bh=kqS5b9opCYN+qUDXNQBLRHJfSLp6/s+RF7Wa8WXmV34=;
	h=To:Subject:From:Date:From;
	b=KKhD45A9SHecuqEcoRWzRvdibHcD8lEHWJerb4eCMoJwWu4i3KSV3vmBJrzkE8sWe
	 KG6NvzkDfhsaGAUeSfDFXOTlwGeDRqIoMvdRdx1xStCE/iVY7jZTxtsqcnuRHF8Z1Y
	 DcnVOlwlz7w24bfv4b0Fz7Jk0Z54IkO2IVfgMuAZTsVrEeWM5ewT+tAZf1qRlDz+Kq
	 jKIUrQv+ewMyJqyAO9XbGpXSWioa3Oanv8CXBHxeyA5zuTk3Vh9sUV69V8gx4fJaxt
	 a0q13A8V0XyX6CNAFiXRb7rq4FItO3JDVGy6OtPPq/tGG2K7OEhFfBZ1DBAX2Dcy1t
	 oGtxvjEixRc1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4E01EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 21:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824544889.3759.5895687045774023484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0021dff0da65281188d65388d976cd59c5e70a70ba127840897384d3404a67
Date: Sat, 01 Jul 2023 21:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688245448
