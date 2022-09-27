Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51677B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755FFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664244653;
	bh=IsRZ/bCoKOhSdGFJPTT3FJYRwS2F2Addh4M+KGKMERw=;
	h=To:Subject:From:Date:From;
	b=efkCu7f3SXZ6j9AH5aUA9KNlATDq8iruUyud/fR67xEjbxZDCeGDYssdYEx4Q/M9+
	 Kq/zibJSdyjMrDZ1wx2Pyi/CCWBCdZz95pRT6ezNObcQIqAB2FFfBOdjWI1KC2SjVS
	 OWgZx2GUE2+XdUHPx4+HVsvnL5AINp/hNGjp/lxe3OSheO23320FRww/whvcYa1hdQ
	 RYPdeNSOgLIhwV4sV1aC/8L9zz6aP0y2biE4IUzywWsTd5qCDRyyyCDA+GXDCrni8n
	 KYBifq2dQz9hxXm5GVoOdYlO1QWFQn2/0bh+hHGomyLppBmYZ0GE8NgynGb4uP41Gw
	 FrNCMHSiYP/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CB2C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424465333.10985.1789502927092501838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f44be2d020719a86dd9714a79b44e430f3f7677521ffd78b17f10fdba096ba
Date: Tue, 27 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664244653
