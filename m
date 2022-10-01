Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E13323B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE1AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664655653;
	bh=lPlfKHcaWEppNVOzk0twSOVzZaeQZB3+I3B1CNjArPU=;
	h=To:Subject:From:Date:From;
	b=lnwNZksipm7K5ukZu4dCm6GbwfKS+/rdLOuLj+M5uOBWdfILoxQkyce2K3jnLq0rR
	 02Zu6ibqsIceDdReH2j1vmZLUJrsUlsPAwXR1CFqvkiSnelhPt2qbMW8JGtutidi3G
	 JF6HSKxfrM61LDS1yBzx/yCC8zd1hS9t1sKqTx9f2amdpbGoOgGqSzGHdUOP+Yv+bZ
	 aUS6WQuk3JX2GEO70lJ6ZCIHUuCPEiJzXe1YcN0DoR8vdlzt2Fo+jXK3KQPGUFnaGo
	 uKdSWEHcsclZfDpb4XTcOrEacO4DgKTyi+SFRcLryJy/QUL//2/mJ5MdgMt55WJfC4
	 WIQf2o8hh2Z7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623EEC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465565339.7408.18003801749585381927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05444b9b8350b0f3e1a471312a0549294cb4ff3a0e815152a15fcc5432b6fb42
Date: Sat, 01 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664655653
