Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF916126
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3E7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693223048;
	bh=cXNYB5vqXNCHXPoqra7kFc0t0DpI6Au2R9EnXYUERAM=;
	h=To:Subject:From:Date:From;
	b=AYG38XVtf83ovi3sFVN7CllL+piI4To1iSsHI1TeO2CS+wrgYnSyb3J3BKBxHUb1h
	 oLkdLL5fNlb3YM7o51YLsFjbTj3Zj6Oq6Ci2BT1jC/CgSoADmlo+N7dLiE6kLYxSv7
	 wOJqizAtR3pPi6n/d1GLQiTrzXRt9PS5zq8XoC1tlVaLkt5vNLgfzaFG+DAJhkv5AT
	 WvO3bd3bY5ebm7DmRQ+F07DZuESljF15fa7FNwCu2m6KB5sHLF5hvvyNN5zJdhuVHl
	 OyVnVh7C2RK1MG2g2FV6d/+BA5iSoRaeC7i1Kec0kWcsPNNuCdNzDLCztSPllpckaW
	 lW3nvlxn8BzbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B36C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169322304874.4904.6715127052836961710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be49458aee8087fceb5ca39b9b119151b307fe232603a52c52949ae65c9c4a80
Date: Mon, 28 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693223048
