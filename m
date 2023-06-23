Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527F1363
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77DDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687486388;
	bh=D+IGW3tTsWmv2cNaUA4PkehZYKVLEqPvqnU4PF56C6M=;
	h=To:Subject:From:Date:From;
	b=BAuohDBBlC58RN/8GWMnLCUtuDOhPoK0NQuRZC6mRgx3XGQEgvYYJJlW4dBVOVLTb
	 gM4aMTcg/WFTAcCHVtsAt1Qun5JkBFhQ122kVNZQcmnc2E7uq+6YwN4KRk8Unbf0qI
	 b0iQUcnXxDkNmqXKO2r8etUpjyPhxQoT20/aiLYKoFldYpmYXh58JfHsuUul/r8YBp
	 OPvlFLUaaoAJWjn8rYXVyFJXOlWCP2NR1UFYlT1j3vJgt3iOEcaKZid/ysOilne6VE
	 7U2oa7vSmcc0LMBasRZkCUmVe435eG18/jhHd4uaCiwD8PB/gKdtDOOJ7+NKBe4SIR
	 znSUq+VA+2OCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F9EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168748638868.7930.4270561816506429137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e62e6e60376742961d93aae66aa77f074ea8c7a5b51598a3380617b23db582
Date: Fri, 23 Jun 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687486388
