Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2DB623
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9267C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677554765;
	bh=F6lgG8XgQnVCoVgBjRZNHagsyE6d8ziDppiyvlqu2XA=;
	h=To:Subject:From:Date:From;
	b=e452G310p382hBbKwiTu21zEGZ2Afj77+Le1/LZ0FwuXlV5R5M1F87rkQG0V+IcV5
	 IQ57u4oQpsJEkRIRnoXVo/FUdJ3BT1DWoe6zvA+NmiQjCnWGZmr0VOBQ/IZnKGVMRJ
	 l/Z8/9s2xS9R2HqkNEZvdJ84APB9ArE8l+mFfsL4tOm16tGfsbkPwm9Oi0pFyQyTXn
	 68Wfwav2dU2DPqG4M9NQ0Sgq0oVGwUoKg0GJOVKmUqDtsbXBikHGyriRATy/SRlrWK
	 Ot9nSllyLIJOQV/vqITfP6FDhrll6xeJCczsRreRkncwKbMrPgrzQN5w2syVeDfeDn
	 30MaaGsxchk6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA34CC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167755476581.14619.3321116278332428536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b625714aa9430b8358acd59e9bef415e2aa5df9e5972a0d0d6273d466ef45493
Date: Tue, 28 Feb 2023 03:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677554765
