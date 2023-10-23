Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18111224D3
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVhcX6ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827A0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698089896;
	bh=brOXSsD5PVOrj7eutgBdVm1Z7vwLgWD9OdOhgAbjMyY=;
	h=To:Subject:From:Date:From;
	b=eVhcX6zeUSpwdJub9FChQr9T2Wy2b/gwUvabZuwgHXcJBsclGcVAfNeKr4+3rR8lX
	 Itfg0ZfrdaZ5omsU4Y53YaRXenQfpr8UetQ9LDDfrPXn/RHngGBZJXqmN5ilclCLil
	 WyyFon+27ZsHGNPGO7u8mkG5zgx615mPseJDsS2emQd+/Rw6GE1YdLfdWfo7KPh6iw
	 z/xTYxiLXbP4fxHWI8nlIcgyt2L8i1Ya+IiXgcv4Zv2WdsGvSPKq0uOxO+Kyd1I0BN
	 BlUGGBD4r9tGEUoNkznxDdZLQuv+354J9HoppbqIRcTy1R0RnxhZbQng2N0oazSOCJ
	 58ylSUljQC5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645D9C25B46
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169808989638.16024.2106617017181501323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37d48010d78975d1361adde8cd645514b8c99c3292278773d6d4941a7ff0b8a
Date: Mon, 23 Oct 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698089896
