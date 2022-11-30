Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FCF3214
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730A3C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669766454;
	bh=M4TsltLJxL4h6Skhv/6+VY8WQ7t8TaEHpY0XmNO66HE=;
	h=To:Subject:From:Date:From;
	b=b9JZQQ61xac0+33D/oWWvdWt1ma3RapjofLDguRiiUSYfwXY/jJt6IurOk4yhEPBm
	 mXkhtihQPwMDI5PoM/L7YfKCe+FOSe05foqDupeyK7Llktbx/2rr10Bk9RO4bzyRLk
	 51Nc7aIzOJwSlU6fs+nbdMB6GtIwHptuWTOq2Iir4IHPOb1P+k/FiftYRJqhM59Aa+
	 QGA7FGBSBzRUbTuwtwhJ9Rl5jxPQCuIb9O7NW6iFOM6FP83RTb4pFp5LyhzDDmmENJ
	 HEnIFBU6efAR6j6QDFSvGKTChQqZK6VtSR5RlkX8UChdew50e3Nq3slb06uMX9ooCX
	 yU2fF0tldmkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522EAC4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976645432.13580.9240770989340654680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377394ecfa85bf656c36fc39c23a6a0698284b03b4362767937aadaff7b600da
Date: Wed, 30 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669766454
