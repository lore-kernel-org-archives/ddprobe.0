Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B4D1860
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DEBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669189854;
	bh=MgOWaSaK/TC1iZGoN2lkdqQszgylsPslrJ2cbZD1XXc=;
	h=To:Subject:From:Date:From;
	b=A9J8gltRHJVSyVXWrcqQLVQCxc38YITLF3TVcTvwtUDU1YSaLOsdIizq6/slw5fUb
	 /X+vRCvAVBF5Y3Mqd33torApFGkyRpot5wZCzC3RbngHR+lR7AxXOVZ1m9wD+ay3Dw
	 41WlAkwoPSoI1KnXlPkPQ8f/DmhfWfwsibY8NA7Qh12Qah+118YSQa7uCBvs2njzRI
	 sD233OkL2UmkLjxKNy2R6eicvdN0+GzZIyA9FySEzCm76lBcw1h7X8TiUN669+k3uP
	 mJgQlfdGQYg3RaJD3eIqu8KLwd7z1ALueoBECaCYqgHVGdFwD2RwYdjjwzByBLvB1h
	 yxLO3ceqNVTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CAC2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166918985437.21748.3715793177084527861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ae1d24e8063062ca87db332c2fcdc039cac43e0c421905cab1098522897b7b
Date: Wed, 23 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669189854
