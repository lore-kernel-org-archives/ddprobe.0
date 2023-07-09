Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA4F522E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7265C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688905628;
	bh=HLnSfLk/xJxSgOej9RBJyXMP/kLB2D6f3431WYMGmW4=;
	h=To:Subject:From:Date:From;
	b=hTGpo6cyXZ9MGOxBR+eqpGQ7mVIo1WTeWVOatHT2PXEJ9JMw012oi1R4il/RS5Tuq
	 fxhCefio0TO1BfAOphjSSuXegAZj8iZ9gGwz+g3VC5msdI1RGcyrJkLy+qp8+Mr/vO
	 dZ72smxySrwbKtDzEp/kedI7ctYyq124WswOTFYEnWJ/ZeqN1a05ElobC16QaR1vn0
	 HWqrwoSIiWC8LgnV8ci8gRnG0aPVnxmiLDfQuMGDFj17mfYd/jEe2U4jKKji3X4jZe
	 PZIOYPYrjMaZYWxjeOYH2Fs2yYSpY1BqAEObGJePuKYA/7zwGeSiIdP5LzIf5d7wQo
	 bM5kpPnEtDqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B078AEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890562871.14624.16537150758693171434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c0ed76a00ebb5c94f259df4117846cf185f71c7bb76d88a8713be0765f28a5
Date: Sun, 09 Jul 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688905628
