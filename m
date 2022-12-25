Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809217C2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBF0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671967887;
	bh=R9CjVrJHwXSdQ1BJj+dcDbo5RR0DIbm/2v5ropAsiOQ=;
	h=To:Subject:From:Date:From;
	b=gzXw7sIzhoneOS3am+DQBbCSj4plN6jE4COQOKVwH737SpgsUbJLoFmx7m6rp56Bw
	 lq4FSl7HFiynf60QsMrWOezHCw8pG+907dBiBCyj6/pllv1L58WeFSwZndQQz7MtZB
	 v50KMZc8coz62R7DJ9Xg/jMjhTSiO9Xaa2iyYJjfsAlS2aQ5M/QC+2c1AFuKWnGdzA
	 Lw9rxboI52MA3h1ems61CDOvHRTsbHxgB5Ng4CpMcOBtVbwe8UKaF1itpyIL3J+r9g
	 HOvmw5FZhOfoxMnyT0Mg6m/y2MVc35BgGIftK9wa8V8tRXqUnUX2x39pxYOi9WS/3q
	 z1Cg0tbbzqY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A09C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196788741.31766.12612242312086203807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a3d1aeeb34c74b5a994e28e27eb162b5d0fc244aa25fdebab4960444305a18
Date: Sun, 25 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671967887
