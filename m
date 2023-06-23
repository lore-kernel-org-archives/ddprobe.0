Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ABC211F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B48C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687522388;
	bh=hrpXitnewpdGOHw4wzKT8g6bxnrQpUFMPY7tPGtuiUQ=;
	h=To:Subject:From:Date:From;
	b=lmiZJF5iCmWiPSexWcuudVHkhBttHyrosHXlVQ2/2MGVH08BGsuGOVMEUNUHDXJno
	 3b8Wel6EvWpEJAtnBZYAg6XKI6VMDfhMbL0LjdWHDZsLOWdPl8wMqLyFr4HVPn8DkI
	 7ZqBD2eBA+Kjx+aBmCIrkQjqRisze2tv6fjLpdWxMSxCNXALWow8xkfPNBkaNQKQid
	 p6+DtMtCCbpNmV+3fUfvhldAN2fw9GshrKtB9NOvHIibIOif1J6pnEfRcveCtgevfE
	 mNQCTVls/HsV7e7cbxKzhBEXN0Vg9bhv0RUmSpXdaERUxP17HW1dGrsK0OlKxzQ2FK
	 vFVMBr7eTFr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB751EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752238869.10442.17669938844835318483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d131d11d44849e2844de24c4bb6fc760dc78e7b58773ed9db01ea3131231650
Date: Fri, 23 Jun 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687522388
