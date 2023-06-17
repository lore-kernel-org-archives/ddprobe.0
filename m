Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9687481
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E742CC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687002548;
	bh=3X5KR3Zht2Cq/eoRJxzWD6DE/E4rKlp70O5S8XSH79g=;
	h=To:Subject:From:Date:From;
	b=ovX//80TIhZ4vJwaFiSFUzZixMXlw8ASNPQMaboIFn/0FJ+yevt2FQmViU+SZqfWv
	 MoY1Es2uW+FL7h/mi8+J3xl3Pm3Pm63SATKKOdlvfcXJwDmsQcx/+yEyS4HnKPXCQg
	 kT4z7Q0x8ULkJx2EgBG8k0CbNfkf4PomZwd6Ou9NLqMAoXkv9JOgjoXgcEwXDgZ7hg
	 /vDPiNYw47Qhsw4qQZ4Tb3yNVdx+Q8NVT2g9dOcNURrVNCyg/D8SmxVKJjBdZSADua
	 BNIdRfLW1M93zUWVLTDGLWRvtz1wqdrFAWuC5qT78ok/bWPERnnZKEAZuLi14qQ468
	 HiF6eCS3tUZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5ABEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700254875.628.11782286801053534077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ee4cb7fa16fb5001978cf23985dfa95fdb18f0dfce310188a869f106cb82c4
Date: Sat, 17 Jun 2023 11:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687002548
