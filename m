Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7461EC8CF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0202C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687347188;
	bh=Gu923cmoyGcP6hxQcIXHWDaXxGjHY5wz0HZSLaxXt5c=;
	h=To:Subject:From:Date:From;
	b=jvS6TxjigwETaERZr9vsVHJ/RRUla7Z6KYbomN4vd4ukCAu3DU2qshRxhxEQHvMdq
	 3xj5egthlpAL+WkHmoEurtgbvXYglU9h2sJolIwquGwBOAihruj2sZxxQJGcGsIMcO
	 vHWMTDfo4fVXiAaVUa7Uy7Dzt4HmcDr/FHyoOVonriCbotidXswaWLtyNmr5PXhGVL
	 t+F76X3WXPddLGI67cDaDL8cPtFCZpKf0G1igRAyMx8CZXvTFFpZWQELSHy2pbqzt3
	 N6TReVG7HNhGucUAylAitysTz1CAiXWEnabrntg/OKygaewQ6rNFN0KivKbEFlVszg
	 lhZabnrpcmVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD26EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734718877.30987.935718994454012024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedc1b38f460274ce4437f00136db7127deaeaa985a356e94217062d1ce4d728
Date: Wed, 21 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687347188
