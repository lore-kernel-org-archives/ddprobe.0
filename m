Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B6E2F3B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FD4C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669492254;
	bh=v6j17o3a8ZMELcy/GsaWxbyQtKZ1zI3VT2a+wmHE5X4=;
	h=To:Subject:From:Date:From;
	b=g2abWxpY4dQNe7az4CBt2ZUv5zJp290sX3KcfaM9nSxls4Rgr1O44xcoET32Xb9ON
	 QsZ4RzB8FIRrwEWjxZjyNqrpU9CMKHkbDsiQXYiuQIthddciC+Md/7tuOnoK7IufGt
	 s+jVGYguPYIqwqWd5OtvPoQR9t1jry/0x55Ui/fs4A9GgQzikfdL2g0LjjiFRfAS/c
	 iw475hrImznvDtBRgskJ3btfcfVNFukV6dmb8KX68JteLDUKOMfxT+eY+taxQ/Tom9
	 /M5w71xCIjTODPkjytZJXv4sPkfork+jq2R2EMPXdMQNW9FFLHiI3xb8mFaxgTJB+8
	 gsTsK8qFtRbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5997BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949225432.14756.6279594381539844597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18666df57f0df3f97f4ee71395a1059d1b36e5c1883cdcca4d92c9f4d866854
Date: Sat, 26 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669492254
