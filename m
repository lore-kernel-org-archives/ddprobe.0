Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702ED1EA7B
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8BAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690842728;
	bh=79L7Z3OJEym1BeoEjarSTOKfrivb/nHWDyKNKXqn95Q=;
	h=To:Subject:From:Date:From;
	b=j+Kbc1kuQdM6HAr6qBjG2RF4vlvY3Ak9WdnDHHsq9VCBGcBLPCQExsm8+EcV3WN1A
	 4TIu9AXjTK4/VQkttXnkXV8j9jmpB/P85QDuXPme20/hOlOssEgXvYKg968LGTN4jx
	 fntEik4XfIk5865DAG+AfDRAlJYT3cj4ribODDdXKxO4KNeHHTg/CG/WlR4vJCLKVg
	 TUIWbX0Qbzj2KUftH5C2m5pPLNmz6uayGiW+Lih0/VZjE71txepDlLH7utUyzcVcS2
	 nkjIhaMOd8LQhMXXi3p0eHpKq83fGNWiNWkS9oCD3x9LttTRQ3bSy/PsuJNFDWHhJV
	 Vy6/C9rIwiYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B7C001E0
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169084272869.20342.17692625565121278687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389389e1250a162fff6753d1be6c7181efdf05a930f30652f431f0e9d2a505f8
Date: Mon, 31 Jul 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690842728
