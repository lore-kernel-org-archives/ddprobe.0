Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3D279C5
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 16:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FFFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 16:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695574508;
	bh=w0vnJtGYuy66k+dVrnJWfxqSzG49UNrrkViQdHcTETo=;
	h=To:Subject:From:Date:From;
	b=MucRhIV9qjh77FMjGnKHPhVA/CRu/b8Cq9+c0av3qIUs13steZV6CawcHTis1r1Hx
	 /XmpKrBdhNXHxiaV39G6gxf5MutNm7mF8Hlp1icCuJhcWvf+KQy1DnfcZtrYa4lRsV
	 VTA4G5n8wbtcBvYcaa2FwaGTUfzydT+kXkbtP6OfGR+HOUHA5SKF+yB+bPSt0EMoAo
	 eQzhuyD2OEOzeBLqSDPWqZlxk5XCGh+z3EH319s4XCtc1m1VKpOhmCyaFoizoV/pJL
	 zhalptoQVmQy0IsU7HcarSgFroEwFRJq6QNsMJcJe2FccyoziVBqE7U5TRfnHKKHwr
	 MyTbENTtJtt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B709BCE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 16:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169557450870.22912.617018547330058545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e496ab1d815f78cd566527d46be2ec04bffb2da0a0b6019d199335a9f73c9b1d
Date: Sun, 24 Sep 2023 16:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695574508
