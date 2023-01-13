Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAB4628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FCEC433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673580087;
	bh=i9ZK0V3vQ0+eUPGoij290w26nyvGP3AN72/2yU1icsk=;
	h=To:Subject:From:Date:From;
	b=Dl95w+UAI6O9S41E367zbwdivNwJD+M21LjKXHCuiRUmmXUniw/LlJIwg0L88vmXm
	 qZcSfBU6TmDNkiDYVczZoLWDar7IlVQ3wOWpsKozs03itWMCr5cSYBIj4grBereIuk
	 BHNliiYumUknEhasR9RNo+VrJg0aVsmzHpiGw7p0UOowDAiXoMVuyKxwslEzdTMff6
	 FnjWBuxEszvX0hmYcvEFUu73suUvIM8A3BaE1MUgf5kZYjQvftaMSzat8biYMoKmgb
	 Ott7MfJeSPI8nWMBheQLm/kxf51/8wUjfQZyOUf7AaPhlBF6Byv3cs60v55kbJh1yH
	 w/swGvKdhwBHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD9EC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358008743.18850.8865754558992661029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78554591d900096db2df9dcfbfa557cbd99d61b6de8111fd3c4c895aff943042
Date: Fri, 13 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673580087
