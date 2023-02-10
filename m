Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1692588
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B14C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676024645;
	bh=zUwRUCjGxpi+zngRgUR6N/Nr0sWVGqy8Nd9w3j5TRZA=;
	h=To:Subject:From:Date:From;
	b=X4qaLtubdmucTtR/D0WeXu1lNIrncb5eS98UkLFFc1FkNGg09Vpr3GGoQRfev31Es
	 vkN11S0UX3F9ncHGHptf3zRs5YtEJF1dovqv9HXLaeVTljqPCsIbTxZ08EOgeJw4x2
	 JcQeOiKxwMZN6qE+xTULyADnLEWLzHm9tHKQ+/BYSPpHXRJZJ3kmpKUNsHmN3hMkYp
	 HVYYzYXWAmzPAK/7Jal0Q6nIIShWs5+oENOe1QHkGo7h/DUAtDD95NuY5Tj/brnK9s
	 L2uUurQ370mcYInY6wa1vngHUBpreC/Sw4gjn4xx89B9KXlRGbivRIG1iBe8wk6KYk
	 UGf1JZaGV/lLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C7FC6379F
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602464573.784.15369354632259640457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c49b110803c442b9b4d7275a880547116acceca12543695a7f263502683473
Date: Fri, 10 Feb 2023 10:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676024645
