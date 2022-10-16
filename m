Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E4D2F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0BDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665951053;
	bh=L7mZHmk7ySeqh6iajBmKDcAZYtAHhxeXzeR16+XCrIk=;
	h=To:Subject:From:Date:From;
	b=GAxIvoJLBOBtkQJMV/06K1VZ637/cYpe+hR/WSF7+wjmPfnBGel30vqBDwh4Ut5dh
	 uF0kY+g5BusVX1847rVB023j0e00/rYNgQwcLGKDlSLyrLyoLpoxUEbQpB6T321KT1
	 4xHl5C2Bs0jW7FmgYPU7gypNU8mM1eEqoMYMhYfoucSr/YS8bJJcS/TZCWCrKPIv3j
	 rKM0zVhIkvTstS6v2EVllHYQlD+5vqUj5tnZlwH+lbeOPLiOCaYEFBClvQEf8XOnZG
	 Zk27Cpm2NVI8DYcV1PrKPeDims5bsHmPPn7u7Mq3/k01hJAZWoekAQidgDwVZfm8e0
	 52fHKL2vd2iXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55015C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595105334.31666.1471926463511443981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e4b08bc180a3ab51a4e9e827c76f2485f55a0d32b9665ddaab68b5bc7e9583
Date: Sun, 16 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665951053
