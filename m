Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D91AA797
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784148514; cv=none; b=cM/WtCNkWhxKzSNFD8zEN1MHWkyHmRfE8WTxBbQZAhsNXowe1YGIS/HeJupqHuKU20kDuuc0pkLIm6mzpTUwbE8vnv9DBHo5ynhbf98vKurp4hwrMDXI9gzvmo/udMGRa1thhV9wmcMXwu1YkP5ktCWRqb1R37bQBy4fMt3N1n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784148514; c=relaxed/simple;
	bh=jYC/RKkvYBT6pVF8Lf2nyZXTIFjW2lbKNyvFgr4biX8=;
	h=To:Subject:From:Message-Id:Date; b=idXb7u55T4tEuPBIdWPoVlJ+nXNirMnzEsOHMBw/UnyGdFkRPPeNHwmFW7iGXtGJkUqHQtoN+KrTeJblt3rrlLTz3FtaH5Q9gGs4ntUzWqTVbK6zUsMNFQu9TMpOh4+a1yiVR6k/C0/LxzhB52FRoKod+0lj851p6yTKdEQ2UJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr8PGTbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr8PGTbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1685C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784148513;
	bh=jYC/RKkvYBT6pVF8Lf2nyZXTIFjW2lbKNyvFgr4biX8=;
	h=To:Subject:From:Date:From;
	b=jr8PGTbJJOFUBlkhNgwQ/bVMtM2cezuZc3EShnLk2Z6sxucbiPYxQr1HADYhAOjX5
	 hZnRbYWuxWUNrC3F7OLhNCwdR9+Z8tD7CV0D91/g1LY+Ipr8FPdhbx+IPxCOE7Vjtm
	 TKk0fKqu/JBWK6djZPQxcvcBDCfToWNV1gxGBgmmR1Baivap9461gBuscB1nskJNaY
	 oNseY13u1LLMBMqs0DEpHfOkDwFPDdAu/ocEhH6PyxydxSHdxKdIcEGAAmWNOjPfyU
	 /iTNxV54lZ/V1k8n5sLSF6OHyaHsVw9pfKNNEX8WD1YDo8zwymwCWOdyfT5ruQvnxJ
	 gPTbvNXuze2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA45C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414851370.22013.17995961023791480542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4921f7304e716d88c9e495ba8708ce79d012ce52cdaca3655ef44ad5de835c
Date: Wed, 15 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784148513
