Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3EE1BEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1857C433C9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690429928;
	bh=1uw8U6G1lKJG7Ajx7/I1nWxuaqCyj+/fJTxffzYNJao=;
	h=To:Subject:From:Date:From;
	b=aw60OlIDIM8O2oHLifawpZyjoRMjkXbHpkn2UHzf0hdB5PWeyz7jHb9UPHXStDurt
	 qmJ0aMM1CwP6NMjMdYrATtc38NJvoOMOFbcUCyGSBp6ChiTphujbQGATWOHzIfKAy9
	 Wl8wD3nYWlTedkleE7HI7LhUIv3/PMXHQ3lob7DZPUIDL0rndHtKWFDgwvree5AAA3
	 FwOApuxClRShPhyLExG/a3Jy9F3u0vFKfBptPM+blXI77QwlLZhNwZswUaLO/Abaw+
	 rMaQD4PU8+zgF/uZwQ7wZyBurzBIKR+5bLdfrYpDoLAJOSPJfCOU3DUCM6jjYtvBt3
	 81P2/NvQrgIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FA7C00528
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169042992872.19639.7559796984334641273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e756a46f113f555c8d8749220e420c81fa6a8fd85e6aaa5b5877c205a79aa2eb
Date: Thu, 27 Jul 2023 03:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690429928
