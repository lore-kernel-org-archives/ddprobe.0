Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3C917C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E8FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668737454;
	bh=eXZf+XYlII6PeyeYmbzPgvGvxRahBWDUGiFUmTcF1C8=;
	h=To:Subject:From:Date:From;
	b=NStaYfU5ME7/Vi+xJINGj29EqLT294F3cFNcNUv7ujBVhPoOkSMQWleU08pMQUxOb
	 r35cveEwSFFBCCRVhfcd/J9oZ/8yr0U/2SLn6QHsmHZPo1XD0FGhPAXpgFbvXd6YfJ
	 La1T6y4Y7tCH5jucwIU+upUrozdUffIerS8vnKsAGhn22V4Q4SwCbKMEeaK0Ifjdlc
	 v4A3qWfAS3eqSH0UXuB7SeVtdRPXwkkDBpHddrq5vmgbitPEox/hbKtppI1KfLnYRJ
	 K3qyu1i3RNPU84FX7blWWp1Fitq2fdpw/t7ywCGL5qpheJzTJrJnMP98+71s367Ctv
	 PD7Z4Ij1xjLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CAE5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873745436.20292.8061604612318487388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64aa4f37c556a3c5d9153f5817e2037b6cd5c7f20f9bd9b3d0b6a2872139a1ff
Date: Fri, 18 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668737454
