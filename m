Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5560210E8
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB287C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684662726;
	bh=x9Bf5ebXZASjhe85HVfWVuQr3aC9arZVdY+OjxR/7Lo=;
	h=To:Subject:From:Date:From;
	b=VfLKMjEwsIyl0WW0aITiM0q57inLAreiGUXJhSNmrT3+wcOTSjUhG6iIqoSC+J6pe
	 TGDyedWPpeiNk5tpbocVmBxRVEV0bquX9WuHNfN/a6JAUgKEczeneInqRAsHuDNKQv
	 0etMRgBvZj0xry2pNNhzWqGON9oUEGk83aJ2KzrNxkU6zFppaxT4+iwFjM8Z7Zcwd8
	 TgD4AVSOQZ+XSudkoAr9tztI7H57mvY2AAKC1C3L3n1SQ3C7XVH6IvLdMWweJL2GC6
	 IhRXp0Cw88TREAf6VL81MgQTKcHxJ8/sRZKSupJZ5oXmanRpuXCfOrs9Fzcc7n7SI4
	 M1LDwDZ1VqRzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAACCC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168466272578.13223.12854994163014899001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b099e8b449ed85c0b425689fe6494e8b388f099fcdf8e751ab23b7bbef41e5b8
Date: Sun, 21 May 2023 09:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684662725
