Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DF57F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D3B7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669853454;
	bh=InozOgzVe+fR6JDgxTamnKJdrkGFPkmBtCx7+e5B70c=;
	h=To:Subject:From:Date:From;
	b=QLe7w1BPKpFdh77hJKlbjD8x7SRu0haUkfh7rALsiP0+lXxvZUfvmEy6ScmsqlBlb
	 6dNp5XJivfEHCjv7S5f80Ayd0+nPozLTAzG+RbRmr57U09R3swb9dVwrRQ+De5gi1r
	 MECsbl1r44661CGTPoimmADiFNpeO6qDmJwr3N4+MLacKb6nPWGOMnwJqA1Wniu1so
	 Ckd32Uy/9Ps9FfCAGFjQ9AI4dkEtlB0UwOuteZB0rnggEiWE2RuHuMqvrfCmaq6GXP
	 hx9pKL1ZiWSWzjv4xRa2av20obWiBUIgGnWtGSb+3OJxQu+lcGeKQUYv0U+odTyH+5
	 vQHC1m4z8K09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C322C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985345443.15228.17342763223839840705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361d45f87928763fcc0f14a56d4c9adb384e9aa29f386931ec650c861ff9c2d1
Date: Thu, 01 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669853454
