Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520278F43
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB71C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675357566;
	bh=YKSEAaegGEbPYHMaUCu7w5xFPli7/CVpnaFCCU4HlhA=;
	h=To:Subject:From:Date:From;
	b=WKLsom+4NednEIgMP5HBYWZjInvZKpczYE7+jLgHreQ9m6s6kugufjwwRyISPG9Q7
	 HNTW9skSR9afP99ias290Ec/NcO66D5g8CEew82Hqmm7m5ZUVUH/KiAAG5L5E9cGiD
	 RJXsqUXP7rDGnHDxwxUltp/DhlCAXBpk2cIzXTo31N+D+Q/z99XLOThtSDGOkYe3EA
	 OMIO7+8oZMIQvB5wCNJN12L270WHrXObsI6l6MgiYzG5YD4iDt312ZsCGl16MTp88T
	 p6giyfKVIpjwqq5sdWiH6D+d2HgETr+HjuyZ/jHX8QTrFNjYM0a480M9go1KfblXgu
	 l5SuEbPDgUh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E2CC05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535756584.19963.3894411279718013245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8917ad707db3849d6d04304231b8a6f7b9f977efb66325491eb78f879718a8a6
Date: Thu, 02 Feb 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675357565
