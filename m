Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D677E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A418C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662711653;
	bh=9LMPd0q7uXg8TFFE1FMb6w/m8dqqqaaRAeXTC3VjPFQ=;
	h=To:Subject:From:Date:From;
	b=Wdbv99FSi2Lwu34awIjTz8hu7nPApu13yOd2sOP7NkAtte+/1aG+qq2fzEpip+LLf
	 NS6JeKb60AobZVdysPcyp2UiDTWTt1wpoNIjKveVq//ZxGGaGxrPJwH6XpJrV7s5GL
	 gvrZ4O/SyT6qfWN2cauc/d8TEz6dDl+OvHkd71YB9lLY2qU98WekvKnx20+PsV++Jb
	 zcHo6fakOfKRcdV0n+3bBy2lsF42cX7FyODk4zY/mdhALe2ZtvnrP6VZLRGG8a7P5e
	 PF68a3/ApyExLEhSs0rEqOy8EtKaUWtU+lzIrKtVoYqBQQGFdDnZRvEpGuR41h78gl
	 UwV8uyfem4Ndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F5CECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271165332.8615.11914754206653915721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba4d3c0b650c9c067658d2352f99098e164b21b9c7507e9460866daa3d0c3ca
Date: Fri, 09 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662711653
