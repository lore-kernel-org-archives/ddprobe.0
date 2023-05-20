Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FDE7F8
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 038ECC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684562946;
	bh=6Dy3D/eZKEbTsg7KD0Drn/jz2a7I/i478AazgLdSxbs=;
	h=To:Subject:From:Date:From;
	b=rmv1XqV3wLGuxmTNqbhJ4tZ3/8qngWR/lVUm2Eg54cGNetvyg55uEn2HBzjdMPd+t
	 2E8y0BPZtJMHwoavwVSMrNraff8ecrMBSXUbrQDPV2V3QhadL6jYCeE15XNMhmfLhX
	 BUFHS56THA0jGWQ2uUo0xA7MP/nLWET/1uD2owMDRCCAdPqlj9Rw64rN/I0T1kDEwU
	 dqpJ5cxmdPLaBDNz9pTj/t8oXGQ+uHaN1d7sw+Tz67F9hHEZ/ze7umPX4va/9AF32w
	 YL5BRZ1NGz8HQm/A9nHWc4V8Tsi0+YC57vuokQ+R4vgmgTmxDpCZdTrE+GH6ggc7Ni
	 R1PsiWmnaJWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC5FC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 06:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168456294584.20159.247556838356078303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8bbf6597bdfbb99a0acf45fdfa6eb013eb868fff6e71ffb7dee493636076bd
Date: Sat, 20 May 2023 06:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684562945
