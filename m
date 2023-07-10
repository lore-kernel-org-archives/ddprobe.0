Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BA217F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18ACC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688959628;
	bh=3s7jYRv2R48D+QENa4qA0xMmyxyTeOpgd26yuVOuRKs=;
	h=To:Subject:From:Date:From;
	b=DEry1KqJQ6NeDiXI48ADF/8ruQPYN5o0DOiWq1HrHAfpmSL97b51LxFyowsrcei+a
	 TH8yqM9qGIZ9p1ZzzxYRgdWVeNto+OiIqoQ8x0vcuyvdyD7dCfGYOWfWC02bifGtmO
	 UPfsCRRcnyx2Wc+ZARVmWoBqtM/Lyj8PyZltYI6e9ACIH/XMFJyWFk7GuHvYsMf0C4
	 m8DDJe9uAUaRXcwS3Pw8hTVjXvtI/t9r8kKErSGnfXTRBJicueZ8ha2coQ9RDABWkG
	 WHpX5xe12XABf3s4/vnEdzEBbfu95rD4DkzCscbUHRVcPSemjxlJahdJZe4Iyn6oNl
	 1MNxg+JvJoRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6098EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895962867.26397.12426673598799397662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77266c6169d2d6a529d2ce94b8b0ac148f9981a5a94ff84065370711ec7b06f3
Date: Mon, 10 Jul 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688959628
