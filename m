Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B530933F2
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7125DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664296853;
	bh=Qr/NJkp8KYKlpsBBOY5tqkvZ1S3uBTD01vUrzJcBww0=;
	h=To:Subject:From:Date:From;
	b=qb7WlRwRvqW+MuvyervYgQIC5AmftrDwSEygQG4iouzPRiPltLY5v3sHwSTIAvcOF
	 JT9+O2WjoMocwci4g0GDQKn/c2Al9kuZ38Lb+9vBbGiT5rrRtWegY9fDrX2xEoOztu
	 /dDc0BhdFA2fKo3zRLuXOdt9T/yh5cz67qlWiCBb+/RSt7ZGJuqm2R5aUqRl8Rnk2L
	 8KPx+E3w5TzFSVOiCjgGkGA2TQzsC5Rjlz4/TMzJgbhc7moajDNWglnZ2AZ1GvNOVu
	 VBohcg+Ko6Sqamn9z+qbAJQON1PGB2n4529eRdgeZE49i4DeQLBl7sG/FdPHgiNznK
	 3jyoJrYoH1g5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583B1C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429685335.29127.15723122671920317221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856f082533df1e9c3fff06801cb7189de88487484af3b1b8ab742226164c3e75
Date: Tue, 27 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664296853
