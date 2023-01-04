Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D55A4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F35CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672853487;
	bh=gua4VDsssHpmILdwgNme013hmcXifnpEKGUulf7yKtA=;
	h=To:Subject:From:Date:From;
	b=USWdQe3jyvF2usOFMNKQJ3xD8U1IwsFr+gbF60+nOlcTOo/JzvAfIMCNtOw2vyUFd
	 OhhZKUuG8Iy69ywGACLqNl5al/NjOvd3WnwVPh+hhAa+zN+ZDjZFSzZKNJhonjpa8C
	 KFe7VuLhIzYkDUBusq+njK/vS5PDsSD7mbSvKbO956lNs+hkoXrnDz284Xa62u1ogv
	 2mF7XAVrnEUx/n+qwhbVlKneMFWy5UDtqmBPMf/duJ7/W/hhsKfFgrHY5c4TZsmk0v
	 3SGsDDZSMOVP3SCryP4V7CByfCOidakxoiahNFL7h3oV2/5mknaW+S4Q7GBRkCWYRO
	 uyRd5a29mnUsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7468BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285348746.7879.7285933087394037949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946abfb151979d8d8f06ea2f23b78b542cf43df4b1b3526d0e2944f62f24efbd
Date: Wed, 04 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672853487
