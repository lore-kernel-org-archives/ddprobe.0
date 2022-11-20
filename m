Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5BE36A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DA7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668912654;
	bh=4XFVxGbVjQ/Zw5qdP+gfi8RwkhTJolVAnUDP4+zbA2o=;
	h=To:Subject:From:Date:From;
	b=tpw+KhI9p/mb39XofHlhRdxS7ZPmRNqKcrOmOS91wEdJg8VuWagSs0KPP/Bw0aLlv
	 vc5pKZXlvaCM9BfylgHZCDa9J6NQ4iCDP4+qvJv3cHkUv+GS8ehWf+JIce4PgPhI2T
	 OIstX5UrypKGTX/jVysoHvoOyiiSv5R+QNF5Wo0FZs/LX2jC/nNGLHgGkdsPM0XHOC
	 IJSPZ2xf4+0usnZEUI1+jUrWqPlzNLP9fNJRHwO11V1RpUWK9QM/qwIgTX7gFdeGNr
	 jAzqs91dZAnO/6G8IMBKhmHMLDC1KUncanMndrjpXe4D8C+uF9jhVbM+Ybt8EPRQDf
	 IOV4yA9BCousw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A211C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891265434.24548.1721201001241325103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3521c211cc67e92a2c29c20591fcccc10eee2d3f5e10a5b558d90b30edfc4f03
Date: Sun, 20 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668912654
