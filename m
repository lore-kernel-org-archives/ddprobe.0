Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB55A3D
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0736C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670647287;
	bh=P1bnTB87LQZlDVgh823sm8cDGBFH+ppr98FGOGDtbSQ=;
	h=To:Subject:From:Date:From;
	b=acNG9vjIYJNLdvF2tWjy/p8rFqAtsF4bZW6m5Rvaw00og5/b9Fjfeu9LaZr22n3AQ
	 QCUU5nuCKO0F+nr0l2JDataT9RlmEtJaJSjIKCiRyKrnxS/Vfe1Lkr3wSwv3mwhj5b
	 vPK3mZ5Z4rqxefDBPtKrtdnhlCtdZbsPjraxrE5k74Bt5QoY8XBNmwIaFXEfqnKo6k
	 ozHEY0d5ACnlzJYAKLbwgNOrLGEyw1ETw0ImcwEAcumT1TJ2uSisUJ4AYXMKoE3oxb
	 QCABLWA47myMrf9uxZNW5mn8O+TC89Ms7npLmHPsGm8ke5InRG0Q02VQNsdqNmm3Vz
	 nXGEWjxBztu3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78F82C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064728746.2023.1208414233655387146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50318446d6db285d384e31d4d4a36ce0125daa3b341c5152d7508dc3cda46317
Date: Sat, 10 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670647287
