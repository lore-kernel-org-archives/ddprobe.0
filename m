Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF01336E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1C1C433B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665715253;
	bh=wt2KkMtl5aBPOglnh2RkwWykjBoZIdteGhfC/lkvkTQ=;
	h=To:Subject:From:Date:From;
	b=MoT8sRXDNC1s/MVuWOCpkA6CtMON8B6YtTRRhJR0H92ViOHrUTtmHof3qSOlmJ2uP
	 /ED1kfQ/8Q4sXTFBJ09NzqquuoPbDGuOxzaj05LO6y2rSNYGXZaQWR7bong37qyFz1
	 4zfT7ocEc2xH3ZUVOrbei8da6CXdHWuEAKyMwBjdsXOVlDof/QUnY11OxGrwAJ/GiR
	 P5wNyeLQD1voP4/42g3hworeJ09Lv/I/yRv9HEPFrR7H5Fpq2nNO4P1p2SsuIiC4S7
	 yebNc5BwECAY4Rhejy6IHTSA4aUW2pfmVrgpsLCOLRSqDIuKmRuMoHvk7xNqSBQpYk
	 9VNFH54OrRNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522CDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571525333.25181.6280237691633344604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58646e9591962d44e334cb4911e9b234d7338a6034eb7789d9004e1544e92ff5
Date: Fri, 14 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665715253
