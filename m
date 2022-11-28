Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1DE63A
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C01C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669618854;
	bh=GplGm3n6zhu2d0OpFtI4JcP/nXcfBn41Wart2FFfj7A=;
	h=To:Subject:From:Date:From;
	b=IOZPxGX8FI7Qyjzg1o7SnNMGNnuhvZqsGddt0chCUwEIsZBWMx/aSn2TpX2ckXf+/
	 k5CZ6QfYMLBoZwdptaoOCkPsEmKhIISC51kwvkXdrEdTpnvVa/YFq16hizL1qtB3Dj
	 aPSOPJP7TuR/dgtwuzld+4d974/i1fudZ0FVhjDkLkrbL2+5iWDXLvmKKeqTcWM+Im
	 i+9BQWufpR1nwrOGn6IrLyWEx9TxVk0VWEeMZs0lCl+jlMh/RP+YHtGfc9FzjkM/4U
	 1BQ6EPCDG6m2c4pTALh/hlJ8vcCDqHILjcOQbsi4sb5X+1l4jUGx1aRykiSAC+Zkf+
	 Xa7To2j3X+7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57190C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961885434.3352.7514214756061988020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a83243c3d810d1f1112f1b19512f60afc162b01b979b81a2442cbe9ae16229
Date: Mon, 28 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669618854
