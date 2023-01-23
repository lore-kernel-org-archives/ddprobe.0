Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBE47C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC235C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674501785;
	bh=eqipdlOKaX2+ne76AMi2zpMQsLYDBTBaSWCNpmrPc8g=;
	h=To:Subject:From:Date:From;
	b=eYbN1qpA8DYhrFGIBRDGVJa3IT06/QErBSIz5j0rj/EVkEb8+LMmZHl0kKi7SZ1FM
	 rb0yA+NQVO95rfDN7IWNZ4V9LNi8XpUgk4lP+NqUcGkhmjOmuOnvREIzv72NxiKN2I
	 GFRA49WTk2oHa6I/M/pZKsin6kSgHBospvc8q5jhUFx/P7fBPZe1wUjOh6qtpBO5hg
	 AyMbARj1msS/bnpOkhCORUeiL9EXcpM8N/Qa2UiwsH7RejNrS/QXGkTpCz09e3zvKW
	 syZYC4Dhs/n4iUT6sYZxIb8vMvLojL82izTefoYlYKtsiIpuTP4UwwRlUmutwNJroY
	 Dny3v1osRJjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B521FC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450178573.7016.11925621961199459303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c313776c66b52c4ac193e54da47cd33a49191c86c95d044c3a3557275ff27c1
Date: Mon, 23 Jan 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674501785
