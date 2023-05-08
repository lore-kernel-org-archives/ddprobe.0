Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1860911CA1
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46E1C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683544685;
	bh=LDJ2yd8eFtx1LPeqr+r1rhEdW+KSKgsLEPtG3N719e8=;
	h=To:Subject:From:Date:From;
	b=IwqH2fgmlbABlDJBhVP0VIdRqKo8nscOyaZ3a8vdC8Odzh+17zjsw+kORapvwT15z
	 isJf2HB4uuLxZRA68nJwmc60G6OxvS1NKGSmCeanbP6+XKVefYzgBrXNbpL+ZblNEO
	 jI6QGTTOnd0ckC1II9eYI5UBDernwS6QKCTK0colCF3A1nQYrdEGFhVmz+HELSIFN/
	 nz7gnbouBFMqWM8MxlmxLouha2T9wOsrQZrDWDgRdjscI5dqT+Rf8PTgRx6G2QVBod
	 +nfDhb9UEe4EOHulBZxmGXjXfgJE0ZrwrkG/dfaVd/C4ZM/cVejTMZzRJxVsrbMauJ
	 Jbf7oRBLEkGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43FAC77B73
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354468573.28076.3048905255389724454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b29bb7c7195a61985e26780104036251012cf7a9b9af2fc93aaa960b1e0560
Date: Mon, 08 May 2023 11:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683544685
