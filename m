Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC97823A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E2B1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673373687;
	bh=zrgULAXXW1x2KMje76UHNQwUbjuydJ5QkGfy2rmoRf4=;
	h=To:Subject:From:Date:From;
	b=hvnD1ICFOUHCfCS3PA69IOHlnsoDinKBJX6IbfX5fkDwnnrGUrQOsYgfFEVMK/607
	 F15qpL2qaqd3nRNQTWnjfeaFl8Uk+nb5Lljq8E+JaHinvFlDPqmlAiRPLnVNOOSzfB
	 WMVcDEheef9XoOF6QlPdg8AuZXj3OCqPWtTuS9oNowo7mF+gG4nq7XnU3DErMRO3s/
	 67jmG8pPjCdKaINBUtjUYRv2lP32uR8K8wb2vgkLsB6L1p6WTJmFhIqsCe4gvgJbWA
	 IzRqealjHfSN13ou3NTpCxAls73QpoChv+BK3S9/rKaaGnBMS2Ui9nw6O1L5NB1qOe
	 j9rbBTMiN0AAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72656C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337368745.15603.14765718550439997077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c55edbf769ed9919a1c327a877d3392ae858a91ec551f8194bc368e134b98f
Date: Tue, 10 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673373687
