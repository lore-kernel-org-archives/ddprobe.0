Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADD51A601
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801A6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667260854;
	bh=U9jaY67DDYUApZusqsH0mQUhWBezA81l5bq01eTMOhM=;
	h=To:Subject:From:Date:From;
	b=VWW+IeurPJMj9Nf0uQuBvE3FKeaqhHCWoQ5bGX2BOtgFKQGvC7+LFlgT7ZI8H8KxK
	 7i1GCh9Jfueh+GWLnOzVUPiHJ437lofAAWkHytEGAxf4ngy4VZcqKjLU/FQ2jDHBen
	 GlW0wdcpQGKoFaoR5r+0V9PyWEOh5NQJzszszje5UwkI3LsNnjIsbEpP7TbmoJJ/N7
	 Vfcd7TGDHzEbjWo31CcrNmQYjmS2EE/wz7s8p/5qDGYznR66ofUijOUSIA6daLi1t9
	 VeHJ/EmRlz/Oc36sD3UkFmqT6CRQAKFoK7sm8aFYgbB5wGUAk2HOZ8zwulad9AH2TH
	 W99ETbr6sXADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E8AECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166726085437.13238.17281741806566599967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e984d318759e6042821ff1f12f991512d00836cc354ea90e4b2c27f68480ae5
Date: Tue, 01 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667260854
