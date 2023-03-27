Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3570F7468
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB15C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679943785;
	bh=f7rBi2JHK/onocTr2g3HnfykCz71Q1Mg7O2ZjS7okro=;
	h=To:Subject:From:Date:From;
	b=gBe9uHulrqm06XiigltWbXSLsmPUTo4BqAJASTTp2Glr3Vlf9PsXtT3t4TmFUhlJg
	 3t+4rrKfzxM2Sj7nw2X0hOscO2ZplYtTnJnLGsRNLerkJLBOm900+jaNdnej8jU5q/
	 oypPfvt48jnSHuhyfEcKVdJNBs2AG9WO2W4wWS2q2An/40gC4HLVpjd11Mvxe44EAS
	 N21Wp1XHrqJwXjbt2isZYsc21W+qBYA77bI5N0dEEyuCMfcWnLyMhxcFi74bzenlBa
	 ce0i2bOYHmCuKKsvH/n26e/QXfqmDbrJvpInuqTO4JIFj0y+8uoIBEicdSI61/cC+b
	 V0xvoMmDUwZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D35C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994378578.4092.15185125403750439863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e39c8f6f0b50b829913119b6e6ffabb3a24e9c44fe666e36dcadc0c9556719
Date: Mon, 27 Mar 2023 19:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679943785
