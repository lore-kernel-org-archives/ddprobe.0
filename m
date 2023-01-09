Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12313205
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A98C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673278887;
	bh=hKwJWNlaYDXrDmG27DERoNfWAPFqLeGDe6KP9z4Vmfk=;
	h=To:Subject:From:Date:From;
	b=rzSdxSw7YwxIAklIx+1eKbbgtr1ssW/nnf1ym3VYT/QNhouhIqhsvsqpYxeDsTDQR
	 qez7XCG9IGYazBlwvtNqQ2eNNbbvYfSZDKElxdomQAVs2riBewsgovrXCFi+akM3e+
	 iUe0CGteLzNiV8b0yT1ibiOj3tuaLkAjyYiMlbM6lyHNboPaOgSE5s5rwybVF5sFsC
	 zL+nZZfhXuSsSrBC5af8dqk0pkzFQOn7IvsCksUQDgp+ZaxotaJVNfOujPw9BC8Nf5
	 bBZhW1BOODTcyvohSIi7PtFORfnXH7UUvx4lZ58uHD4mWQ/5l0ZWe9yJr2tGwFpRG9
	 N7xtEOq3uW/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69239C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167327888741.15634.6896973888961724420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eb4d3fea399a1f415a7229f90703c7a15f40b1822f6ee07cc7cac95072ed6f
Date: Mon, 09 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673278887
