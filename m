Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14A97B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E374C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667265054;
	bh=lTntg++bPxpwgZQYrzU5joLveslPV/PZfhCJmBWb+L0=;
	h=To:Subject:From:Date:From;
	b=e1G6VFxt5G7WeWxa+dywzZupPs3fIamfjc9AgRe5TbF1jYiL16nU7v8NAfbuWG/vP
	 kjuTrHGYEkMKuzELCaMjsSlA5RJCYQF0nEmu+PVWs11popLdsN9UFze2aDv7M7aNNU
	 tawFBR/H2FHqT54QvIDhTi8Krn2PrnEFrc4IPfKk8Go0F51r7Ag9ZPYfeJ/PYQPnsj
	 nPX45nxpP66SCo/BfQklEfUXku8IGGNjp63rDte6cLX5g5M/mrMkwURwHSKJ9CyJ3V
	 veaALsKzwl6d9WzLsiyqEGjt4GWnmmx1I/o5+He/H9l2DrVEY3Rep58KmcwSbV/Jmn
	 IxfbfYlhT7EFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BDCFA3741
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166726505434.21744.8688376177264607556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f61fe846f235240f979115ca32d67bd1c0494506d4a68d191e218ccf15a6f6e
Date: Tue, 01 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667265054
