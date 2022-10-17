Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12DA7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DE8C433B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666039853;
	bh=VTTr3aMucmn/Jr4RPtbE51UPALzlraV1F4i0omqXlNc=;
	h=To:Subject:From:Date:From;
	b=g0QYoVN/7LjNcck9o153N04/xUGPqUrNZ1evB/zXfnLLpaoiyGl8iRTbvZEtdt+ks
	 p7weI3VDy7bTRzPBlQiZnkrmKv8kZYl67OJ93bRcKey5Y3CTAbaIUhLDAG5v93UjeV
	 RX2fr5TSA1tb7qLxiQ93lbJYdtFNT/ZunnmdR+PJLHF8aKZgk5yk+kjdB/KzYwfQEz
	 E3TKFGK/SaG1XnOKwuy9FZoXziHeOxiE5UaJdUkP0TJmZaASDlLB8TO7o+sEmY09VJ
	 iwXz7Zi4NAzCypGrbKwwKycz6zw32sg8j8gNRZ3agyb7sNeC0JSw3zsytFHvs8riye
	 zW2Pc/g0Ub9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51360C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603985332.22163.16681223583076418555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2555f551bf6c5a10481ba734e0c57ed51882605a31d7f9b8edac80ea8f7c073
Date: Mon, 17 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666039853
