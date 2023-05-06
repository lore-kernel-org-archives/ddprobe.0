Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DE846B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E048CC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683395285;
	bh=rwGFBuNN/gjuBIMzeapAr3GrS/Btv3duyXosXgVmR64=;
	h=To:Subject:From:Date:From;
	b=iFyEI106zK2VvAgnE4+j6EQeAwMe4SS9zUjKJiMAKpgSG1laHy/Ky0sBfpK6Osb1a
	 +2D2sp8WPYpb+cXEpBk7yI4vt3FdbSLyZN6sVnPs2XiwbtvBhcSnezuSVtMchRvvtb
	 GlA/PCY7EkvFBtqZ1beVirfza0PdbU7U9TxKKqiXbH8eDJMdaPe1M3qrB6TnrEGfVV
	 DTK7tbD9RY0Xjdy+f8LyU2Zj94o9lbGZGNPWA1j4b9F90ObAvEMKKckGpD465TROtQ
	 wDkfLB2lQZZEJKiOH3eRyxPY7Qer0CnB/yqAV8dKICnv5QNZMRNlDDKEwrOjFFXG+2
	 E9MKVHu+XZZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C060AC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168339528576.10759.15036424862817650261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89c4168799147657bee30480f0aed93b43a98e32fda82461f252c6d642c45ed
Date: Sat, 06 May 2023 17:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683395285
