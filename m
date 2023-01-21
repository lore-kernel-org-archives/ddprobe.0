Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B8A395
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E02C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674336125;
	bh=aADw9ZaIFStfJrYwDo1Scg4VEBPsZvLS9DmAzDBqpZg=;
	h=To:Subject:From:Date:From;
	b=fB/r/9v27Qn1qZDyg3+HYbxTUSpwuyryiS8Mx/nhfU07Ue45tK4jmHM36J910EFu8
	 OQfCbUBLJjMB0vUqLhC4FktGhniKS1mCFyIWLBbC4kyu3FVEc/fFrR37nmsC/HxAdH
	 OVn9iVegEiP0BEi9ly8z8U34F8lFZ52ifmNIJkJhVtGRl8zC1IOktqpcjgqnyuLXvR
	 U8jz/42F6DP8JP4O2wCY3YlCp+qkjdndFK1VmnPAnihfYT0eT9AEm/sL7bfvXYNUXD
	 CgdGbDma5kQEZxLJHVRlrzB6ShJy5SEwwQidOle7lijYF9k0n8hXVUfJ1i3H7LYYTV
	 Qi4aaIoM3yu6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEF5C38142
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433612583.31460.12831638721082410063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d165a7f8be3cb5362ef6675634f322c1388f2afd0c8a55f26a8734631ad9fc4
Date: Sat, 21 Jan 2023 21:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674336125
